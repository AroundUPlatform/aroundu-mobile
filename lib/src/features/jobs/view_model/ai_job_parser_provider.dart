import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ai/ai_output_validator.dart';
import '../../../core/ai/run_anywhere_service.dart';
import '../../ai/view_model/model_manager_provider.dart';
import '../model/parsed_job_data.dart';

// ── System prompt (dedicated extraction prompt) ─────────────────────

const String _jobCreatorSystemPrompt =
    '''You are a structured data extractor for a local services marketplace.
Given a user's free-text description of a problem or task they need help with, extract job information.

Respond ONLY with a single valid JSON object. No markdown, no explanation, no extra text.
Schema:
{"title":"short title","description":"detailed description","skillNames":["skill1","skill2"],"budget":null,"jobUrgency":"NORMAL"}

Rules:
- title: concise summary (max 60 chars)
- description: clear 2-4 sentence explanation of the task
- skillNames: 1-3 relevant trade/skill names (e.g. "plumbing", "electrical", "painting")
- budget: a number if the user mentions a price/budget, otherwise null
- jobUrgency: one of NORMAL, MEDIUM, URGENT, SUPER_URGENT based on tone/keywords
- If a field cannot be determined, set it to null or []
- Do NOT invent information the user did not mention''';

// ── State ───────────────────────────────────────────────────────────

class AIJobParserState {
  const AIJobParserState({
    this.isLoading = false,
    this.parsedData,
    this.rawOutput = '',
    this.error,
    this.hasWarning = false,
    this.warningMessage,
  });

  final bool isLoading;
  final ParsedJobData? parsedData;
  final String rawOutput;
  final String? error;
  final bool hasWarning;
  final String? warningMessage;

  AIJobParserState copyWith({
    bool? isLoading,
    ParsedJobData? parsedData,
    String? rawOutput,
    String? Function()? error,
    bool? hasWarning,
    String? Function()? warningMessage,
  }) {
    return AIJobParserState(
      isLoading: isLoading ?? this.isLoading,
      parsedData: parsedData ?? this.parsedData,
      rawOutput: rawOutput ?? this.rawOutput,
      error: error != null ? error() : this.error,
      hasWarning: hasWarning ?? this.hasWarning,
      warningMessage: warningMessage != null
          ? warningMessage()
          : this.warningMessage,
    );
  }
}

// ── Notifier ────────────────────────────────────────────────────────

class AIJobParserNotifier extends AutoDisposeNotifier<AIJobParserState> {
  @override
  AIJobParserState build() => const AIJobParserState();

  /// Parse free-text [userInput] into structured [ParsedJobData].
  Future<void> parse(String userInput) async {
    final mm = ref.read(modelManagerProvider);
    if (!mm.isActive) {
      state = const AIJobParserState(
        error: 'No AI model loaded. Please set up a model first.',
      );
      return;
    }

    state = const AIJobParserState(isLoading: true);

    try {
      // Collect all tokens from the streaming LLM.
      final buffer = StringBuffer();
      await for (final token in RunAnywhereService.generateStream(
        userInput,
        systemPrompt: _jobCreatorSystemPrompt,
        maxTokens: 350,
        temperature: 0.1,
      )) {
        buffer.write(token);
      }

      final raw = buffer.toString();
      final decoded = _extractJson(raw);

      if (decoded == null) {
        state = AIJobParserState(
          rawOutput: raw,
          error: 'Could not extract structured data from AI response.',
        );
        return;
      }

      final result = AIOutputValidator.validateParsedJob(decoded);

      if (!result.canPartiallyUse) {
        state = AIJobParserState(
          rawOutput: raw,
          error: 'Could not extract structured data from AI response.',
        );
        return;
      }

      if (result.isValid && result.value!.hasSufficientData) {
        state = AIJobParserState(parsedData: result.value, rawOutput: raw);
      } else {
        final warningParts = result.violations.map((v) => v.message).toList();
        state = AIJobParserState(
          parsedData: result.value,
          rawOutput: raw,
          hasWarning: true,
          warningMessage: warningParts.isNotEmpty
              ? warningParts.join(' ')
              : 'Some details could not be extracted.',
        );
      }
    } catch (e) {
      state = AIJobParserState(error: e.toString());
    }
  }

  /// Reset to idle state.
  void reset() {
    state = const AIJobParserState();
  }

  // ── JSON extraction ─────────────────────────────────────────────

  /// Attempts to find and parse a JSON object from the raw LLM output.
  /// Handles markdown code fences and surrounding prose.
  static Map<String, dynamic>? _extractJson(String raw) {
    // Strip markdown code fences if present.
    var cleaned = raw.trim();
    cleaned = cleaned.replaceAll(RegExp(r'```json\s*'), '');
    cleaned = cleaned.replaceAll(RegExp(r'```\s*'), '');

    // Find the first JSON object in the output.
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

final aiJobParserProvider =
    AutoDisposeNotifierProvider<AIJobParserNotifier, AIJobParserState>(
      AIJobParserNotifier.new,
    );
