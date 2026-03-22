import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ai/device_checker.dart';
import '../../../core/ai/model_catalog.dart';
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
      appBar: AppBar(title: const Text('AI Capabilities')),
      body: _checking
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // ── Header ───────────────────────────────────────
                Icon(Icons.auto_awesome, size: 48, color: cs.primary),
                const SizedBox(height: 12),
                Text(
                  'On-Device AI',
                  style: tt.titleLarge?.copyWith(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 6),
                Text(
                  'Private · Offline · Free',
                  style: tt.bodyMedium?.copyWith(color: cs.onSurfaceVariant),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Get smart suggestions for tasks and bids powered by '
                  'an AI model that runs entirely on your device. '
                  'No data leaves your phone.',
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
                                'Multilingual',
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
                  'Download happens in the background — you can leave '
                  'this screen. The model file will be stored on your '
                  'device and can be removed at any time.',
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
            'Downloading… ${(installState.progress * 100).toStringAsFixed(0)}%',
            style: const TextStyle(fontSize: 12),
          ),
        ],
      );
    }

    if (installState is InstallLoading) {
      return const Row(
        children: [
          SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
          SizedBox(width: 8),
          Text('Loading model…', style: TextStyle(fontSize: 13)),
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
            child: const Text('Retry Download'),
          ),
        ],
      );
    }

    if (mm.isActive) {
      return Row(
        children: [
          Icon(Icons.check_circle, color: cs.primary, size: 18),
          const SizedBox(width: 6),
          const Text('Active & Ready', style: TextStyle(fontSize: 13)),
          const Spacer(),
          TextButton(
            onPressed: () => _confirmDelete(context),
            child: const Text('Remove'),
          ),
        ],
      );
    }

    if (mm.isDownloaded) {
      return Row(
        children: [
          FilledButton.tonal(
            onPressed: () => ref.read(modelManagerProvider.notifier).activate(),
            child: const Text('Enable AI'),
          ),
          const Spacer(),
          TextButton(
            onPressed: () => _confirmDelete(context),
            child: const Text('Remove'),
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
      label: Text(canRun ? 'Download AI Model' : 'Device not supported'),
    );
  }

  Future<void> _confirmDelete(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Remove AI Model?'),
        content: const Text(
          'This will delete the AI model from your device. '
          'You can re-download it later.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: const Text('Remove'),
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
            Text('Device Check', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 8),
            _CheckRow(
              label: 'Physical device',
              ok: physicalOk,
              detail: physicalOk ? 'Yes' : 'Emulator detected',
            ),
            _CheckRow(
              label: 'RAM',
              ok: ramOk,
              detail: device.ramMb >= 99999
                  ? 'Sufficient'
                  : '${device.ramMb} MB',
            ),
            _CheckRow(
              label: 'Free storage',
              ok: storageOk,
              detail: '${device.freeStorageMb} MB free',
            ),
            if (!physicalOk)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'AI features require a physical device.',
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
