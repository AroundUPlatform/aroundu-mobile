import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ai/ai_output_validator.dart';
import '../../../core/ai/run_anywhere_service.dart';
import '../../../core/logging/app_logger.dart';
import '../../ai/view_model/model_manager_provider.dart';
import '../model/chat_models.dart';

// ── System prompt ───────────────────────────────────────────────────

const String _chatSuggesterSystemPrompt =
    '''You are a smart reply assistant for a chat in a local services marketplace app called AroundU.
Given a conversation between a CLIENT and a WORKER about a job, suggest 3 short reply options for the user.

Respond ONLY with a single valid JSON array. No markdown, no explanation, no extra text.
Schema: ["reply1","reply2","reply3"]

Rules:
- Detect the language used in the conversation and reply in the SAME language
- Each reply must be at most 80 characters
- Replies should be natural, friendly, and professional
- Cover different intents: e.g. confirmation, question, request
- Be context-aware: reference the job or last message topic when relevant
- Never include harmful, offensive, or inappropriate content
- Never include personal data (phone numbers, addresses, etc.)
- If the conversation is too short to infer context, provide generic polite replies''';

// ── State ───────────────────────────────────────────────────────────

class AIChatSuggesterState {
  const AIChatSuggesterState({
    this.isGenerating = false,
    this.suggestions = const <String>[],
    this.error,
  });

  final bool isGenerating;
  final List<String> suggestions;
  final String? error;

  AIChatSuggesterState copyWith({
    bool? isGenerating,
    List<String>? suggestions,
    String? Function()? error,
  }) {
    return AIChatSuggesterState(
      isGenerating: isGenerating ?? this.isGenerating,
      suggestions: suggestions ?? this.suggestions,
      error: error != null ? error() : this.error,
    );
  }
}

// ── Notifier ────────────────────────────────────────────────────────

class AIChatSuggesterNotifier
    extends AutoDisposeNotifier<AIChatSuggesterState> {
  static final _log = AppLogger.tag('AI/ChatSuggester');

  @override
  AIChatSuggesterState build() => const AIChatSuggesterState();

  /// Generate 3 smart reply suggestions based on recent [messages].
  ///
  /// [myRole] is either `"WORKER"` or `"CLIENT"` so the AI knows whose
  /// perspective to reply from. [jobTitle] gives additional context.
  Future<void> generate({
    required List<ChatMessage> recentMessages,
    required String myRole,
    required String jobTitle,
  }) async {
    final mm = ref.read(modelManagerProvider);
    if (!mm.isActive) {
      _log.d('Model inactive — chat suggestions skipped');
      return;
    }

    _log.d(
      'Generating smart replies  role=$myRole  '
      'job="$jobTitle"  messages=${recentMessages.length}',
    );
    state = const AIChatSuggesterState(isGenerating: true);

    try {
      final prompt = _buildPrompt(recentMessages, myRole, jobTitle);

      final buffer = StringBuffer();
      await for (final token in RunAnywhereService.generateStream(
        prompt,
        systemPrompt: _chatSuggesterSystemPrompt,
        maxTokens: 200,
        temperature: 0.7,
      )) {
        buffer.write(token);
      }

      final raw = buffer.toString();
      _log.t('Raw LLM output (${raw.length} chars):\n$raw');

      final decoded = _extractJsonArray(raw);

      if (decoded == null) {
        _log.w('Could not extract JSON array from chat suggestion output');
        state = const AIChatSuggesterState();
        return;
      }

      final result = AIOutputValidator.validateChatSuggestions(decoded);
      final suggestions = result.value ?? const <String>[];

      if (suggestions.isEmpty) {
        _log.w('Suggestion list empty after validation');
        state = const AIChatSuggesterState();
        return;
      }

      _log.i('Suggestions ready: ${suggestions.length} items');
      state = AIChatSuggesterState(suggestions: suggestions);
    } catch (e) {
      _log.w('Smart reply generation failed, resetting silently  $e');
      state = const AIChatSuggesterState();
    }
  }

  /// Clear suggestions (e.g. after the user sends a message).
  void reset() {
    state = const AIChatSuggesterState();
  }

  // ── Prompt construction ───────────────────────────────────────────

  static String _buildPrompt(
    List<ChatMessage> messages,
    String myRole,
    String jobTitle,
  ) {
    final sb = StringBuffer();
    sb.writeln('Job: $jobTitle');
    sb.writeln('I am the $myRole. Suggest replies for me.');
    sb.writeln();
    sb.writeln('Recent conversation:');

    // Use the last 10 messages at most.
    final recent = messages.length > 10
        ? messages.sublist(messages.length - 10)
        : messages;

    for (final msg in recent) {
      sb.writeln('${msg.senderRole}: ${msg.content}');
    }

    return sb.toString();
  }

  // ── Response parsing ──────────────────────────────────────────────

  /// Extract a JSON array from the raw LLM output.
  static List<Object?>? _extractJsonArray(String raw) {
    var cleaned = raw.trim();
    cleaned = cleaned.replaceAll(RegExp(r'```json\s*'), '');
    cleaned = cleaned.replaceAll(RegExp(r'```\s*'), '');

    // Find the first JSON array.
    final match = RegExp(r'\[[\s\S]*?\]').firstMatch(cleaned);
    if (match == null) return null;

    try {
      final decoded = jsonDecode(match.group(0)!);
      if (decoded is! List) return null;
      return decoded;
    } catch (_) {
      return null;
    }
  }
}

// ── Provider ────────────────────────────────────────────────────────

final aiChatSuggesterProvider =
    AutoDisposeNotifierProvider<AIChatSuggesterNotifier, AIChatSuggesterState>(
      AIChatSuggesterNotifier.new,
    );
