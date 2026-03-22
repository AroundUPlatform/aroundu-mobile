import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/ai_service_provider.dart';
import '../view_model/model_manager_provider.dart';
import '../view/ai_setup_screen.dart';

/// Reusable inline AI analysis panel.
///
/// Embed this in any screen (job detail, bid list, create-job form) and
/// provide the [useCase] + [inputBuilder] that returns the prompt text.
class AIAnalysisPanel extends ConsumerWidget {
  const AIAnalysisPanel({
    super.key,
    required this.useCase,
    required this.inputBuilder,
    this.buttonLabel = 'Analyze with AI',
  });

  final AIUseCase useCase;

  /// Builds the prompt text from current form/context data.
  /// Called when the user taps the analyze button.
  final String Function() inputBuilder;

  final String buttonLabel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final mm = ref.watch(modelManagerProvider);
    final analysis = ref.watch(aiAnalysisProvider);

    // No model loaded — show setup prompt
    if (mm.activeModelId == null) {
      return _SetupPrompt(colorScheme: cs);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(height: 24),
        Row(
          children: [
            Icon(Icons.auto_awesome, size: 18, color: cs.primary),
            const SizedBox(width: 6),
            Text(
              'On-Device AI',
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(color: cs.primary),
            ),
            const Spacer(),
            if (analysis.isGenerating)
              TextButton(
                onPressed: () => ref.read(aiAnalysisProvider.notifier).stop(),
                child: const Text('Stop'),
              )
            else
              FilledButton.tonal(
                onPressed: () => ref
                    .read(aiAnalysisProvider.notifier)
                    .analyze(useCase, inputBuilder()),
                child: Text(buttonLabel),
              ),
          ],
        ),
        if (analysis.error != null)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              analysis.error!,
              style: TextStyle(color: cs.error, fontSize: 12),
            ),
          ),
        if (analysis.output.isNotEmpty) ...[
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: cs.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SelectableText(
              analysis.output,
              style: const TextStyle(fontSize: 13, height: 1.5),
            ),
          ),
          const SizedBox(height: 4),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton.icon(
              onPressed: () => ref.read(aiAnalysisProvider.notifier).reset(),
              icon: const Icon(Icons.refresh, size: 16),
              label: const Text('Clear'),
            ),
          ),
        ],
        if (analysis.isGenerating && analysis.output.isEmpty)
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: LinearProgressIndicator(),
          ),
      ],
    );
  }
}

class _SetupPrompt extends StatelessWidget {
  const _SetupPrompt({required this.colorScheme});
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Icon(Icons.auto_awesome, color: colorScheme.primary),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'AI Assistant available',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Set up an on-device AI model to get smart suggestions.',
                    style: TextStyle(
                      fontSize: 12,
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            FilledButton.tonal(
              onPressed: () => Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (_) => const AISetupScreen())),
              child: const Text('Setup'),
            ),
          ],
        ),
      ),
    );
  }
}
