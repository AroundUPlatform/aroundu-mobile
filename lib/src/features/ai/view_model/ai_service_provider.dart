import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ai/run_anywhere_service.dart';
import 'model_manager_provider.dart';

/// Use cases for on-device AI analysis in AroundU.
enum AIUseCase {
  taskEnhancer,
  bidExplainerWorker,
  bidExplainerClient,
  jobMatch,
  pricingSuggester,
  skillVerifier,
}

// ── System prompts per use-case ──────────────────────────────────────

const Map<AIUseCase, String> _systemPrompts = {
  AIUseCase.taskEnhancer:
      '''You are a task-writing assistant for a local services marketplace called AroundU.
Given a rough task description, rewrite it so it is clear, professional, and includes:
- A concise title suggestion (one line)
- A detailed description (2-4 sentences)
- Suggested skills/tags (comma-separated)
- Estimated time range

Keep it practical and under 150 words total.''',

  AIUseCase.bidExplainerWorker:
      '''You are a bid advisor for workers on a local services marketplace.
Given a job posting (title, description, budget, required skills), explain:
- What the client likely expects
- Tips to write a winning bid
- A fair price range based on the description

Be concise and actionable. Under 120 words.''',

  AIUseCase.bidExplainerClient:
      '''You are a bid advisor for clients on a local services marketplace.
Given a list of bids (worker name, price, message), help the client understand:
- Which bid offers the best value
- Red flags to watch for
- A brief recommendation

Be neutral and concise. Under 120 words.''',

  AIUseCase.jobMatch:
      '''You are a job-matching assistant for a local services marketplace.
Given a worker's skills and a list of available jobs (title, description, budget), rank the top 3 best matches and explain why each is a good fit in one sentence.

Be concise. Under 100 words.''',

  AIUseCase.pricingSuggester:
      '''You are a pricing advisor for a local services marketplace.
Given a task description and location context, suggest:
- A competitive price range (low – high)
- Factors that could raise or lower the price
- A recommended starting bid

Be concise and practical. Under 100 words.''',

  AIUseCase.skillVerifier: '''You are a skills verification assistant.
Given a claimed skill and a brief description of the worker's experience, assess:
- Whether the experience description supports the skill claim (Yes/Likely/Unclear/No)
- One follow-up question that could verify the skill further

Be concise. Under 80 words.''',
};

// ── AI Analysis State ────────────────────────────────────────────────

class AIAnalysisState {
  final bool isGenerating;
  final String output;
  final String? error;

  const AIAnalysisState({
    this.isGenerating = false,
    this.output = '',
    this.error,
  });

  AIAnalysisState copyWith({
    bool? isGenerating,
    String? output,
    String? Function()? error,
  }) {
    return AIAnalysisState(
      isGenerating: isGenerating ?? this.isGenerating,
      output: output ?? this.output,
      error: error != null ? error() : this.error,
    );
  }
}

// ── Notifier ─────────────────────────────────────────────────────────

class AIAnalysisNotifier extends AutoDisposeNotifier<AIAnalysisState> {
  StreamSubscription<String>? _sub;

  @override
  AIAnalysisState build() => const AIAnalysisState();

  /// Run on-device analysis for the given [useCase] with [userInput].
  ///
  /// Requires an active model (see [modelManagerProvider]).
  void analyze(AIUseCase useCase, String userInput) {
    final mm = ref.read(modelManagerProvider);
    if (mm.activeModelId == null) {
      state = state.copyWith(
        error: () => 'No AI model loaded. Please set up a model first.',
      );
      return;
    }

    _sub?.cancel();
    state = const AIAnalysisState(isGenerating: true);

    final systemPrompt = _systemPrompts[useCase]!;
    final stream = RunAnywhereService.generateStream(
      userInput,
      systemPrompt: systemPrompt,
    );

    _sub = stream.listen(
      (token) {
        state = state.copyWith(output: state.output + token);
      },
      onError: (Object e) {
        state = state.copyWith(isGenerating: false, error: () => e.toString());
      },
      onDone: () {
        state = state.copyWith(isGenerating: false);
      },
    );
  }

  /// Stop an in-progress generation.
  void stop() {
    _sub?.cancel();
    _sub = null;
    state = state.copyWith(isGenerating: false);
  }

  /// Clear previous results.
  void reset() {
    _sub?.cancel();
    _sub = null;
    state = const AIAnalysisState();
  }
}

// ── Provider ─────────────────────────────────────────────────────────

final aiAnalysisProvider =
    AutoDisposeNotifierProvider<AIAnalysisNotifier, AIAnalysisState>(
      AIAnalysisNotifier.new,
    );
