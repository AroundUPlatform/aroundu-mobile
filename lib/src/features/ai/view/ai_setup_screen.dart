import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ai/device_checker.dart';
import '../../../core/ai/model_catalog.dart';
import '../../../core/l10n/l10n_extension.dart';
import '../view_model/model_manager_provider.dart';

/// AI capabilities screen — simple toggle to download / remove the AI model.
/// No model choice is exposed to the user; the best general-purpose model
/// is selected automatically.
class AISetupScreen extends ConsumerStatefulWidget {
  const AISetupScreen({super.key});

  @override
  ConsumerState<AISetupScreen> createState() => _AISetupScreenState();
}

class _AISetupScreenState extends ConsumerState<AISetupScreen> {
  DeviceCompatibility? _device;
  bool _checking = true;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    await ref.read(modelManagerProvider.notifier).initSDK();
    final compat = await DeviceChecker.check();
    if (mounted) {
      setState(() {
        _device = compat;
        _checking = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    final mm = ref.watch(modelManagerProvider);

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.aiCapabilities)),
      body: _checking
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // ── Header ───────────────────────────────────────
                Icon(Icons.auto_awesome, size: 48, color: cs.primary),
                const SizedBox(height: 12),
                Text(
                  context.l10n.onDeviceAi,
                  style: tt.titleLarge?.copyWith(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 6),
                Text(
                  context.l10n.aiTaglineSetup,
                  style: tt.bodyMedium?.copyWith(color: cs.onSurfaceVariant),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  context.l10n.aiSetupDescription,
                  style: tt.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),

                // ── Device check ─────────────────────────────────
                _DeviceCard(device: _device!, colorScheme: cs),
                const SizedBox(height: 20),

                // ── Model info ───────────────────────────────────
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: mm.isActive
                        ? BorderSide(color: cs.primary, width: 2)
                        : BorderSide.none,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                kDefaultModel.name,
                                style: tt.titleSmall,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: cs.primaryContainer,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                context.l10n.multilingual,
                                style: TextStyle(
                                  fontSize: 11,
                                  color: cs.onPrimaryContainer,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(kDefaultModel.description, style: tt.bodySmall),
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 8,
                          children: [
                            Chip(
                              avatar: const Icon(
                                Icons.storage_outlined,
                                size: 14,
                              ),
                              label: Text(
                                kDefaultModel.displaySize,
                                style: const TextStyle(fontSize: 11),
                              ),
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              padding: EdgeInsets.zero,
                            ),
                            Chip(
                              avatar: const Icon(Icons.memory, size: 14),
                              label: Text(
                                kDefaultModel.ramDisplay,
                                style: const TextStyle(fontSize: 11),
                              ),
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              padding: EdgeInsets.zero,
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),

                        // ── Action area ──────────────────────────
                        _buildAction(context, cs, mm),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 16),
                // ── Fine print ───────────────────────────────────
                Text(
                  context.l10n.downloadBackgroundNote,
                  style: tt.bodySmall?.copyWith(color: cs.onSurfaceVariant),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
    );
  }

  Widget _buildAction(
    BuildContext context,
    ColorScheme cs,
    ModelManagerState mm,
  ) {
    final installState = mm.installState;
    final canRun =
        _device != null &&
        _device!.isPhysical &&
        _device!.ramMb >= (kDefaultModel.memoryBytes / (1024 * 1024)).round();

    if (installState is InstallDownloading) {
      return Column(
        children: [
          LinearProgressIndicator(value: installState.progress),
          const SizedBox(height: 6),
          Text(
            context.l10n.downloadingProgress(
              (installState.progress * 100).toStringAsFixed(0),
            ),
            style: const TextStyle(fontSize: 12),
          ),
        ],
      );
    }

    if (installState is InstallLoading) {
      return Row(
        children: [
          const SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
          const SizedBox(width: 8),
          Text(context.l10n.loadingModel, style: const TextStyle(fontSize: 13)),
        ],
      );
    }

    if (installState is InstallError) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            installState.message,
            style: TextStyle(color: cs.error, fontSize: 12),
          ),
          const SizedBox(height: 8),
          FilledButton(
            onPressed: canRun
                ? () => ref
                      .read(modelManagerProvider.notifier)
                      .downloadAndActivate()
                : null,
            child: Text(context.l10n.retryDownload),
          ),
        ],
      );
    }

    if (mm.isActive) {
      return Row(
        children: [
          Icon(Icons.check_circle, color: cs.primary, size: 18),
          const SizedBox(width: 6),
          Text(
            context.l10n.activeAndReady,
            style: const TextStyle(fontSize: 13),
          ),
          const Spacer(),
          TextButton(
            onPressed: () => _confirmDelete(context),
            child: Text(context.l10n.remove),
          ),
        ],
      );
    }

    if (mm.isDownloaded) {
      return Row(
        children: [
          FilledButton.tonal(
            onPressed: () => ref.read(modelManagerProvider.notifier).activate(),
            child: Text(context.l10n.enableAi),
          ),
          const Spacer(),
          TextButton(
            onPressed: () => _confirmDelete(context),
            child: Text(context.l10n.remove),
          ),
        ],
      );
    }

    // Not downloaded yet
    return FilledButton.icon(
      onPressed: canRun
          ? () => ref.read(modelManagerProvider.notifier).downloadAndActivate()
          : null,
      icon: const Icon(Icons.download_rounded),
      label: Text(
        canRun ? context.l10n.downloadAiModel : context.l10n.deviceNotSupported,
      ),
    );
  }

  Future<void> _confirmDelete(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(context.l10n.removeAiModelTitle),
        content: Text(context.l10n.removeAiModelConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(context.l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(context.l10n.remove),
          ),
        ],
      ),
    );
    if (confirmed == true) {
      await ref.read(modelManagerProvider.notifier).deleteModel();
    }
  }
}

// ── Device info card ─────────────────────────────────────────────────

class _DeviceCard extends StatelessWidget {
  const _DeviceCard({required this.device, required this.colorScheme});

  final DeviceCompatibility device;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    final ramOk = device.ramMb >= 512;
    final storageOk = device.freeStorageMb >= 400;
    final physicalOk = device.isPhysical;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.deviceCheck,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            _CheckRow(
              label: context.l10n.physicalDevice,
              ok: physicalOk,
              detail: physicalOk
                  ? context.l10n.yes
                  : context.l10n.emulatorDetected,
            ),
            _CheckRow(
              label: context.l10n.ram,
              ok: ramOk,
              detail: device.ramMb >= 99999
                  ? context.l10n.sufficient
                  : '${device.ramMb} MB',
            ),
            _CheckRow(
              label: context.l10n.freeStorage,
              ok: storageOk,
              detail: context.l10n.mbFree(device.freeStorageMb),
            ),
            if (!physicalOk)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  context.l10n.aiRequiresPhysicalDevice,
                  style: TextStyle(color: colorScheme.error, fontSize: 12),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _CheckRow extends StatelessWidget {
  const _CheckRow({
    required this.label,
    required this.ok,
    required this.detail,
  });

  final String label;
  final bool ok;
  final String detail;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Icon(
            ok ? Icons.check_circle_outline : Icons.warning_amber_rounded,
            size: 18,
            color: ok ? Colors.green : Colors.orange,
          ),
          const SizedBox(width: 8),
          Text(label, style: const TextStyle(fontSize: 13)),
          const Spacer(),
          Text(
            detail,
            style: TextStyle(fontSize: 12, color: cs.onSurfaceVariant),
          ),
        ],
      ),
    );
  }
}
