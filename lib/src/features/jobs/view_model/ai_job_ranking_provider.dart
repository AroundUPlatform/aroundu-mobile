import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ai/ai_output_validator.dart';
import '../../../core/ai/run_anywhere_service.dart';
import '../../../core/logging/app_logger.dart';
import '../../ai/view_model/model_manager_provider.dart';
import '../model/job_item.dart';
import '../model/ranked_job_feed.dart';

// ── Constants ───────────────────────────────────────────────────────

/// Jobs scoring at or above this threshold are placed in "Top Matches".
const double _kTopMatchThreshold = 0.65;

const String _jobRankerSystemPrompt =
    '''You are a job-relevance ranking engine for a local services marketplace.
Given a worker's skills and a numbered list of available jobs, score each job from 0.0 to 1.0 based on:
- Skill match: how well the job's required skills overlap with the worker's skills (highest weight)
- Distance: closer jobs score higher
- Urgency: jobs due sooner score higher
- Budget: higher budgets score slightly higher (tie-breaker)

Respond ONLY with a single valid JSON object. No markdown, no explanation, no extra text.
Schema: {"rankings":[{"jobId":<int>,"score":<float 0.0-1.0>}]}

Rules:
- Include EVERY job from the input list \u2014 do not skip any
- Scores must be between 0.0 and 1.0 inclusive
- Order the rankings array from highest score to lowest
- If the worker has no matching skills for a job, give it a low score (0.1-0.3) not zero''';

// ── State ───────────────────────────────────────────────────────────

class AIJobRankingState {
  const AIJobRankingState({
    this.isRanking = false,
    this.rankedFeed,
    this.error,
  });

  final bool isRanking;
  final RankedJobFeed? rankedFeed;
  final String? error;

  AIJobRankingState copyWith({
    bool? isRanking,
    RankedJobFeed? rankedFeed,
    String? Function()? error,
  }) {
    return AIJobRankingState(
      isRanking: isRanking ?? this.isRanking,
      rankedFeed: rankedFeed ?? this.rankedFeed,
      error: error != null ? error() : this.error,
    );
  }
}

// ── Notifier ────────────────────────────────────────────────────────

class AIJobRankingNotifier extends AutoDisposeNotifier<AIJobRankingState> {
  static final _log = AppLogger.tag('AI/JobRanker');

  /// Fingerprint of the last ranked job set to avoid redundant re-ranks.
  Set<int>? _lastFingerprint;

  @override
  AIJobRankingState build() => const AIJobRankingState();

  /// Rank [jobs] based on how well they match this worker's [skills].
  ///
  /// Skips re-ranking if the job-ID set hasn't changed.
  /// Falls back to [RankedJobFeed.fallback] silently on any failure.
  Future<void> rank(List<JobItem> jobs, Set<String> skills) async {
    if (jobs.isEmpty) {
      state = AIJobRankingState(rankedFeed: RankedJobFeed.fallback(jobs));
      return;
    }

    // Fingerprint: skip if same set of job IDs
    final fingerprint = jobs.map((j) => j.jobId).toSet();
    if (fingerprint.length == _lastFingerprint?.length &&
        fingerprint.containsAll(_lastFingerprint ?? {})) {
      _log.d(
        'Skipping rank — same job fingerprint (${fingerprint.length} jobs)',
      );
      return; // already ranked this exact set
    }

    // If the model isn't loaded, fall back silently.
    final mm = ref.read(modelManagerProvider);
    if (!mm.isActive) {
      _log.d('Model inactive, using fallback ranking for ${jobs.length} jobs');
      _lastFingerprint = fingerprint;
      state = AIJobRankingState(rankedFeed: RankedJobFeed.fallback(jobs));
      return;
    }

    _log.d('Ranking ${jobs.length} jobs  skills=[${skills.join(", ")}]');
    state = const AIJobRankingState(isRanking: true);

    try {
      final prompt = _buildPrompt(jobs, skills);

      // Collect all tokens.
      final buffer = StringBuffer();
      await for (final token in RunAnywhereService.generateStream(
        prompt,
        systemPrompt: _jobRankerSystemPrompt,
        maxTokens: 400,
        temperature: 0.1,
      )) {
        buffer.write(token);
      }

      final raw = buffer.toString();
      _log.t('Raw LLM output (${raw.length} chars):\n$raw');

      final rankedFeed = _parseRankings(raw, jobs);

      _log.i(
        'Ranked ${jobs.length} jobs  '
        'topMatches=${rankedFeed.topMatches.length}  '
        'nearby=${rankedFeed.nearbyJobs.length}',
      );
      _lastFingerprint = fingerprint;
      state = AIJobRankingState(rankedFeed: rankedFeed);
    } catch (e) {
      _log.w('Ranking failed, falling back silently  $e');
      // Silent fallback — never degrade the UX.
      _lastFingerprint = fingerprint;
      state = AIJobRankingState(rankedFeed: RankedJobFeed.fallback(jobs));
    }
  }

  /// Reset state and fingerprint so the next call always re-ranks.
  void invalidate() {
    _lastFingerprint = null;
    state = const AIJobRankingState();
  }

  // ── Prompt construction ───────────────────────────────────────────

  static String _buildPrompt(List<JobItem> jobs, Set<String> skills) {
    final sb = StringBuffer();
    sb.writeln('Worker skills: ${skills.join(", ")}');
    sb.writeln();
    sb.writeln('Jobs:');

    for (var i = 0; i < jobs.length; i++) {
      final j = jobs[i];
      final daysDue = j.dueDate.difference(DateTime.now()).inDays;
      final dist = j.distanceKm != null
          ? '${j.distanceKm!.toStringAsFixed(1)}km'
          : '?';
      sb.writeln(
        '${i + 1}. [ID:${j.jobId}] ${j.title} | '
        'Skills: ${j.requiredSkillNames.join(", ")} | '
        'Dist: $dist | '
        'Budget: ${j.budget.toStringAsFixed(0)} | '
        'Due: ${daysDue}d',
      );
    }

    return sb.toString();
  }

  // ── Response parsing ──────────────────────────────────────────────

  /// Parses the LLM JSON response into a [RankedJobFeed].
  /// Guarantees all input jobs appear in the output.
  static RankedJobFeed _parseRankings(String raw, List<JobItem> jobs) {
    // Strip markdown fences if present.
    var cleaned = raw.trim();
    cleaned = cleaned.replaceAll(RegExp(r'```json\s*'), '');
    cleaned = cleaned.replaceAll(RegExp(r'```\s*'), '');

    final match = RegExp(r'\{[\s\S]*\}').firstMatch(cleaned);
    if (match == null) return RankedJobFeed.fallback(jobs);

    final Map<String, dynamic> decoded;
    try {
      decoded = jsonDecode(match.group(0)!) as Map<String, dynamic>;
    } catch (_) {
      return RankedJobFeed.fallback(jobs);
    }

    final result = AIOutputValidator.validateJobRankings(decoded, jobs);
    final scores = result.value;

    if (scores == null || scores.isEmpty) {
      return RankedJobFeed.fallback(jobs);
    }

    // Build lookup for jobs by id
    final jobById = {for (final j in jobs) j.jobId: j};

    // Partition into top matches (sorted by score desc) and remainder
    final topMatches = <JobItem>[];
    final nearbyJobs = <JobItem>[];

    final sortedIds = scores.keys.toList()
      ..sort((a, b) => (scores[b] ?? 0).compareTo(scores[a] ?? 0));

    for (final id in sortedIds) {
      final job = jobById[id];
      if (job == null) continue;
      if ((scores[id] ?? 0) >= _kTopMatchThreshold) {
        topMatches.add(job);
      } else {
        nearbyJobs.add(job);
      }
    }

    return RankedJobFeed(
      topMatches: topMatches,
      nearbyJobs: nearbyJobs,
      isAiRanked: topMatches.isNotEmpty,
    );
  }
}

// ── Provider ────────────────────────────────────────────────────────

final aiJobRankingProvider =
    AutoDisposeNotifierProvider<AIJobRankingNotifier, AIJobRankingState>(
      AIJobRankingNotifier.new,
    );
