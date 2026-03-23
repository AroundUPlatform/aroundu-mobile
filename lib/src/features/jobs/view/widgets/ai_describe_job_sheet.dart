import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/l10n/l10n_extension.dart';
import '../../../ai/view/ai_setup_screen.dart';
import '../../../ai/view_model/model_manager_provider.dart';
import '../../model/parsed_job_data.dart';
import '../../view_model/ai_job_parser_provider.dart';

/// Bottom sheet that lets the user describe a problem in free text
/// and uses on-device AI to extract structured job data.
///
/// Returns [ParsedJobData] via `Navigator.pop` when extraction succeeds
/// (fully or partially). Returns `null` if the user dismisses the sheet.
class AiDescribeJobSheet extends ConsumerStatefulWidget {
  const AiDescribeJobSheet({super.key});

  @override
  ConsumerState<AiDescribeJobSheet> createState() => _AiDescribeJobSheetState();
}

class _AiDescribeJobSheetState extends ConsumerState<AiDescribeJobSheet> {
  final _controller = TextEditingController();
  String? _attachedImageName;

  static const _minChars = 10;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final picked = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 60,
    );
    if (picked != null && mounted) {
      setState(() => _attachedImageName = picked.name);
    }
  }

  void _removeImage() {
    setState(() => _attachedImageName = null);
  }

  String _buildPrompt() {
    var prompt = _controller.text.trim();
    if (_attachedImageName != null) {
      prompt += '\n(User attached a photo: $_attachedImageName)';
    }
    return prompt;
  }

  void _generate() {
    if (_controller.text.trim().length < _minChars) return;
    ref.read(aiJobParserProvider.notifier).parse(_buildPrompt());
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final mm = ref.watch(modelManagerProvider);
    final parserState = ref.watch(aiJobParserProvider);

    // When parsing succeeds, pop with the result.
    ref.listen<AIJobParserState>(aiJobParserProvider, (prev, next) {
      if (prev?.isLoading == true &&
          !next.isLoading &&
          next.parsedData != null) {
        Navigator.of(context).pop(next.parsedData);
      }
    });

    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 8,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Header ──────────────────────────────────────────────
          Row(
            children: [
              Icon(Icons.auto_awesome, color: cs.primary, size: 22),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  context.l10n.aiDescribeProblem,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            context.l10n.aiDescribeSheetSubtitle,
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: cs.onSurfaceVariant),
          ),
          const SizedBox(height: 16),

          // ── AI not ready ────────────────────────────────────────
          if (!mm.isActive) ...[
            _AiNotReadyCard(colorScheme: cs),
          ] else ...[
            // ── Text input ──────────────────────────────────────
            TextField(
              controller: _controller,
              maxLines: 4,
              minLines: 3,
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                hintText: context.l10n.aiDescribeHint,
                hintMaxLines: 3,
                border: const OutlineInputBorder(),
                alignLabelWithHint: true,
              ),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 10),

            // ── Image attach row ────────────────────────────────
            if (_attachedImageName != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Chip(
                  avatar: const Icon(Icons.image, size: 18),
                  label: Text(
                    _attachedImageName!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  deleteIcon: const Icon(Icons.close, size: 16),
                  onDeleted: _removeImage,
                ),
              )
            else
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                  onPressed: _pickImage,
                  icon: const Icon(Icons.add_a_photo_outlined, size: 18),
                  label: Text(context.l10n.addImageContext),
                ),
              ),

            // ── Min chars warning ───────────────────────────────
            if (_controller.text.trim().isNotEmpty &&
                _controller.text.trim().length < _minChars)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  context.l10n.aiDescribeMinCharsWarning,
                  style: TextStyle(color: cs.error, fontSize: 12),
                ),
              ),

            // ── Error message ───────────────────────────────────
            if (parserState.error != null) ...[
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  parserState.error!,
                  style: TextStyle(color: cs.error, fontSize: 12),
                ),
              ),
            ],

            // ── Loading indicator ───────────────────────────────
            if (parserState.isLoading) ...[
              const SizedBox(height: 4),
              const LinearProgressIndicator(),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  context.l10n.aiParsingJob,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              const SizedBox(height: 12),
            ] else ...[
              // ── Generate button ─────────────────────────────────
              const SizedBox(height: 4),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: _controller.text.trim().length >= _minChars
                      ? _generate
                      : null,
                  icon: const Icon(Icons.auto_awesome, size: 18),
                  label: Text(context.l10n.aiGenerateForm),
                ),
              ),
            ],
          ],
        ],
      ),
    );
  }
}

/// Inline prompt shown when the AI model is not loaded.
class _AiNotReadyCard extends StatelessWidget {
  const _AiNotReadyCard({required this.colorScheme});
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
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
                  Text(
                    context.l10n.aiAssistantAvailable,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    context.l10n.aiSetupPrompt,
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
              child: Text(context.l10n.setup),
            ),
          ],
        ),
      ),
    );
  }
}
