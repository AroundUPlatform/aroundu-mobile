import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ai/device_checker.dart';
import '../../../core/ai/model_catalog.dart';
import '../view_model/model_manager_provider.dart';

/// One-time AI setup screen — device check + model catalog.
/// Accessible from settings and shown on first AI feature tap.
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
    final mm = ref.watch(modelManagerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('AI Model Setup')),
      body: _checking
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _DeviceCard(device: _device!, colorScheme: cs),
                const SizedBox(height: 20),
                Text(
                  'Choose a model',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  'Download once, runs fully offline on your device.',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 12),
                ...kModelCatalog.map(
                  (spec) => _ModelCard(
                    spec: spec,
                    device: _device!,
                    mmState: mm,
                    onDownload: () => ref
                        .read(modelManagerProvider.notifier)
                        .downloadAndActivate(spec.id),
                    onActivate: () => ref
                        .read(modelManagerProvider.notifier)
                        .activateModel(spec.id),
                    onDelete: () => ref
                        .read(modelManagerProvider.notifier)
                        .deleteModel(spec.id),
                  ),
                ),
              ],
            ),
    );
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
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

// ── Model card ───────────────────────────────────────────────────────

class _ModelCard extends StatelessWidget {
  const _ModelCard({
    required this.spec,
    required this.device,
    required this.mmState,
    required this.onDownload,
    required this.onActivate,
    required this.onDelete,
  });

  final ModelSpec spec;
  final DeviceCompatibility device;
  final ModelManagerState mmState;
  final VoidCallback onDownload;
  final VoidCallback onActivate;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDownloaded = mmState.downloadedIds.contains(spec.id);
    final isActive = mmState.activeModelId == spec.id;
    final installState = mmState.installStates[spec.id] ?? const InstallIdle();
    final ramNeededMb = (spec.memoryBytes / (1024 * 1024)).round();
    final canRun = device.isPhysical && device.ramMb >= ramNeededMb;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isActive
            ? BorderSide(color: cs.primary, width: 2)
            : BorderSide.none,
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header row
            Row(
              children: [
                Expanded(
                  child: Text(
                    spec.name,
                    style: Theme.of(context).textTheme.titleSmall,
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
                    spec.badge,
                    style: TextStyle(
                      fontSize: 11,
                      color: cs.onPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              spec.description,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 6),
            // Info chips
            Wrap(
              spacing: 8,
              children: [
                _InfoChip(spec.displaySize, Icons.storage_outlined),
                _InfoChip(spec.ramDisplay, Icons.memory),
              ],
            ),
            const SizedBox(height: 10),
            // Action / progress
            _buildAction(
              context,
              cs,
              installState,
              isDownloaded,
              isActive,
              canRun,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAction(
    BuildContext context,
    ColorScheme cs,
    ModelInstallState installState,
    bool isDownloaded,
    bool isActive,
    bool canRun,
  ) {
    if (installState is InstallDownloading) {
      return Column(
        children: [
          LinearProgressIndicator(value: installState.progress),
          const SizedBox(height: 4),
          Text(
            '${(installState.progress * 100).toStringAsFixed(0)}%',
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
      return Text(
        installState.message,
        style: TextStyle(color: cs.error, fontSize: 12),
      );
    }

    if (isActive) {
      return Row(
        children: [
          Icon(Icons.check_circle, color: cs.primary, size: 18),
          const SizedBox(width: 6),
          const Text('Active', style: TextStyle(fontSize: 13)),
          const Spacer(),
          TextButton(onPressed: onDelete, child: const Text('Delete')),
        ],
      );
    }

    if (isDownloaded) {
      return Row(
        children: [
          FilledButton.tonal(
            onPressed: onActivate,
            child: const Text('Activate'),
          ),
          const Spacer(),
          TextButton(onPressed: onDelete, child: const Text('Delete')),
        ],
      );
    }

    // Not downloaded
    return FilledButton(
      onPressed: canRun ? onDownload : null,
      child: Text(canRun ? 'Download & Activate' : 'Device not supported'),
    );
  }
}

class _InfoChip extends StatelessWidget {
  const _InfoChip(this.label, this.icon);
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(icon, size: 14),
      label: Text(label, style: const TextStyle(fontSize: 11)),
      visualDensity: VisualDensity.compact,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: EdgeInsets.zero,
    );
  }
}
