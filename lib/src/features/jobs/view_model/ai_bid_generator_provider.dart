import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ai/ai_output_validator.dart';
import '../../../core/ai/run_anywhere_service.dart';
import '../../../core/logging/app_logger.dart';
import '../../ai/view_model/model_manager_provider.dart';
import '../model/ai_suggested_bid.dart';
import '../model/job_item.dart';

// ── System prompt ───────────────────────────────────────────────────

const String _bidGeneratorSystemPrompt =
    '''You are a bid-writing assistant for workers on a local services marketplace.
Given a job posting and the worker's skills, generate a competitive bid suggestion.

Respond ONLY with a single valid JSON object. No markdown, no explanation, no extra text.
Schema:
{"price":<float>,"message":"<2-3 sentence professional message>","estimatedTime":"<duration>","rationale":"<brief explanation>"}

Rules:
- price: a reasonable amount based on the job budget, complexity, and market rates. Never zero. Usually 70-95% of the stated budget for competitive bids
- message: professional, job-specific message highlighting relevant experience. 2-3 sentences maximum
- estimatedTime: realistic duration (e.g. "2-3 hours", "1 day", "3-5 days") based on the task
- rationale: one sentence explaining why this price is appropriate
- Do NOT copy the job description verbatim into the message
- Be confident but not arrogant in the message tone''';

// ── State ───────────────────────────────────────────────────────────

class AIBidGeneratorState {
  const AIBidGeneratorState({
    this.isGenerating = false,
    this.suggestion,
    this.error,
  });

  final bool isGenerating;
  final AISuggestedBid? suggestion;
  final String? error;

  AIBidGeneratorState copyWith({
    bool? isGenerating,
    AISuggestedBid? suggestion,
    String? Function()? error,
  }) {
    return AIBidGeneratorState(
      isGenerating: isGenerating ?? this.isGenerating,
      suggestion: suggestion ?? this.suggestion,
      error: error != null ? error() : this.error,
    );
  }
}

// ── Notifier ────────────────────────────────────────────────────────

class AIBidGeneratorNotifier extends AutoDisposeNotifier<AIBidGeneratorState> {
  static final _log = AppLogger.tag('AI/BidGen');

  @override
  AIBidGeneratorState build() => const AIBidGeneratorState();

  /// Generate a bid suggestion for [job] based on the worker's [skills].
  Future<void> generate(
    JobItem job,
    Set<String> skills, {
    int? experienceYears,
    String currency = 'INR',
  }) async {
    final mm = ref.read(modelManagerProvider);
    if (!mm.isActive) {
      _log.w('generate() called but model not active');
      state = const AIBidGeneratorState(
        error: 'No AI model loaded. Please set up a model first.',
      );
      return;
    }

    _log.d(
      'Generating bid  job=#${job.jobId} "${job.title}"  '
      'skills=[${skills.join(", ")}]  currency=$currency',
    );
    state = const AIBidGeneratorState(isGenerating: true);

    try {
      final prompt = _buildPrompt(job, skills, experienceYears, currency);

      // Collect all tokens from the streaming LLM.
      final buffer = StringBuffer();
      await for (final token in RunAnywhereService.generateStream(
        prompt,
        systemPrompt: _bidGeneratorSystemPrompt,
        maxTokens: 300,
        temperature: 0.2,
      )) {
        buffer.write(token);
      }

      final raw = buffer.toString();
      _log.t('Raw LLM output (${raw.length} chars):\n$raw');

      final suggestion = _extractSuggestion(raw);

      if (suggestion == null) {
        _log.w('Could not extract valid JSON from bid output');
        state = const AIBidGeneratorState(
          error: 'Could not generate a valid bid suggestion.',
        );
        return;
      }

      final result = AIOutputValidator.validateBid(suggestion);

      if (!result.canPartiallyUse) {
        _log.w(
          'Bid validation failed  '
          'violations=[${result.violations.map((v) => v.message).join(", ")}]',
        );
        state = const AIBidGeneratorState(
          error: 'Could not generate a valid bid suggestion.',
        );
        return;
      }

      if (result.warnings.isNotEmpty) {
        _log.w(
          'Bid has validation warnings  '
          'warnings=[${result.warnings.map((v) => v.message).join(", ")}]',
        );
      }

      _log.i(
        'Bid generated  price=${result.value?.price}  '
        'time="${result.value?.estimatedTime}"',
      );
      state = AIBidGeneratorState(suggestion: result.value);
    } catch (e, st) {
      _log.e('Bid generation failed', error: e, stackTrace: st);
      state = AIBidGeneratorState(error: e.toString());
    }
  }

  /// Reset to idle state.
  void reset() {
    state = const AIBidGeneratorState();
  }

  // ── Prompt construction ───────────────────────────────────────────

  static String _buildPrompt(
    JobItem job,
    Set<String> skills,
    int? experienceYears,
    String currency,
  ) {
    final sb = StringBuffer();
    sb.writeln('Job Title: ${job.title}');
    sb.writeln('Description: ${job.description}');
    sb.writeln('Budget: $currency ${job.budget.toStringAsFixed(0)}');
    sb.writeln('Required Skills: ${job.requiredSkillNames.join(", ")}');
    sb.writeln('Category: ${job.category}');
    sb.writeln();
    sb.writeln('Worker Skills: ${skills.join(", ")}');
    if (experienceYears != null && experienceYears > 0) {
      sb.writeln('Experience: $experienceYears years');
    }
    return sb.toString();
  }

  // ── Response parsing ──────────────────────────────────────────────

  /// Extract and parse the JSON bid suggestion from the raw LLM output.
  static Map<String, dynamic>? _extractSuggestion(String raw) {
    // Strip markdown code fences if present.
    var cleaned = raw.trim();
    cleaned = cleaned.replaceAll(RegExp(r'```json\s*'), '');
    cleaned = cleaned.replaceAll(RegExp(r'```\s*'), '');

    // Find the first JSON object.
    final match = RegExp(r'\{[\s\S]*\}').firstMatch(cleaned);
    if (match == null) return null;

    try {
      return jsonDecode(match.group(0)!) as Map<String, dynamic>;
    } catch (_) {
      return null;
    }
  }
}

// ── Provider ────────────────────────────────────────────────────────

final aiBidGeneratorProvider =
    AutoDisposeNotifierProvider<AIBidGeneratorNotifier, AIBidGeneratorState>(
      AIBidGeneratorNotifier.new,
    );
