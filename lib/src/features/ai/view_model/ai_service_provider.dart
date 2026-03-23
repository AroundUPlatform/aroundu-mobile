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
  jobCreatorParser,
  jobRanker,
  bidGenerator,
  chatReplySuggester,
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

  AIUseCase.jobCreatorParser:
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
- Do NOT invent information the user did not mention''',

  AIUseCase.jobRanker:
      '''You are a job-relevance ranking engine for a local services marketplace.
Given a worker's skills and a numbered list of available jobs, score each job from 0.0 to 1.0 based on:
- Skill match: how well the job's required skills overlap with the worker's skills (highest weight)
- Distance: closer jobs score higher
- Urgency: jobs due sooner score higher
- Budget: higher budgets score slightly higher (tie-breaker)

Respond ONLY with a single valid JSON object. No markdown, no explanation, no extra text.
Schema: {"rankings":[{"jobId":<int>,"score":<float 0.0-1.0>}]}

Rules:
- Include EVERY job from the input list — do not skip any
- Scores must be between 0.0 and 1.0 inclusive
- Order the rankings array from highest score to lowest
- If the worker has no matching skills for a job, give it a low score (0.1-0.3) not zero''',

  AIUseCase.bidGenerator:
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
- Be confident but not arrogant in the message tone''',

  AIUseCase.chatReplySuggester:
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
- If the conversation is too short to infer context, provide generic polite replies''',
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
    if (!mm.isActive) {
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
