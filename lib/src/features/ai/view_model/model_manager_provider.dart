import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ai/device_checker.dart';
import '../../../core/ai/model_catalog.dart';
import '../../../core/ai/run_anywhere_service.dart';

// ── Install state ───────────────────────────────────────────────────

sealed class ModelInstallState {
  const ModelInstallState();
}

class InstallIdle extends ModelInstallState {
  const InstallIdle();
}

class InstallDownloading extends ModelInstallState {
  final double progress; // 0.0 – 1.0
  const InstallDownloading(this.progress);
}

class InstallLoading extends ModelInstallState {
  const InstallLoading();
}

class InstallReady extends ModelInstallState {
  const InstallReady();
}

class InstallError extends ModelInstallState {
  final String message;
  const InstallError(this.message);
}

// ── Aggregate state ─────────────────────────────────────────────────

class ModelManagerState {
  final bool sdkReady;
  final bool isDownloaded;
  final bool isActive;
  final ModelInstallState installState;

  const ModelManagerState({
    this.sdkReady = false,
    this.isDownloaded = false,
    this.isActive = false,
    this.installState = const InstallIdle(),
  });

  ModelManagerState copyWith({
    bool? sdkReady,
    bool? isDownloaded,
    bool? isActive,
    ModelInstallState? installState,
  }) {
    return ModelManagerState(
      sdkReady: sdkReady ?? this.sdkReady,
      isDownloaded: isDownloaded ?? this.isDownloaded,
      isActive: isActive ?? this.isActive,
      installState: installState ?? this.installState,
    );
  }
}

// ── Notifier ────────────────────────────────────────────────────────

class ModelManagerNotifier extends Notifier<ModelManagerState> {
  @override
  ModelManagerState build() => const ModelManagerState();

  /// Initialize the RunAnywhere SDK and check if the model is already present.
  Future<void> initSDK() async {
    if (state.sdkReady) return;

    await RunAnywhereService.ensureSDKInitialized();
    final downloaded = await RunAnywhereService.isModelDownloaded(
      kDefaultModel.id,
    );
    final active = RunAnywhereService.currentModelId == kDefaultModel.id;

    state = state.copyWith(
      sdkReady: true,
      isDownloaded: downloaded,
      isActive: active,
    );
  }

  /// Download the model, then load it into memory.
  Future<void> downloadAndActivate() async {
    state = state.copyWith(installState: const InstallDownloading(0));

    try {
      await RunAnywhereService.downloadModel(kDefaultModel.id, (progress) {
        state = state.copyWith(installState: InstallDownloading(progress));
      });

      state = state.copyWith(installState: const InstallLoading());
      await RunAnywhereService.loadModel(kDefaultModel.id);

      state = state.copyWith(
        isDownloaded: true,
        isActive: true,
        installState: const InstallReady(),
      );
    } catch (e) {
      state = state.copyWith(installState: InstallError('$e'));
    }
  }

  /// Load an already-downloaded model into memory.
  Future<void> activate() async {
    if (state.isActive) return;

    state = state.copyWith(installState: const InstallLoading());

    try {
      await RunAnywhereService.loadModel(kDefaultModel.id);
      state = state.copyWith(
        isActive: true,
        installState: const InstallReady(),
      );
    } catch (e) {
      state = state.copyWith(installState: InstallError('$e'));
    }
  }

  /// Remove the downloaded model from disk completely.
  Future<void> deleteModel() async {
    try {
      await RunAnywhereService.deleteModel(kDefaultModel.id);
    } catch (_) {}

    // Verify deletion
    final stillExists = await RunAnywhereService.isModelDownloaded(
      kDefaultModel.id,
    );

    state = state.copyWith(
      isDownloaded: stillExists,
      isActive: false,
      installState: const InstallIdle(),
    );
  }
}

// ── Providers ───────────────────────────────────────────────────────

final modelManagerProvider =
    NotifierProvider<ModelManagerNotifier, ModelManagerState>(
      ModelManagerNotifier.new,
    );

/// Whether any AI model is currently loaded and ready for inference.
final isAiReadyProvider = Provider<bool>((ref) {
  return ref.watch(modelManagerProvider.select((s) => s.isActive));
});

// ── Storage usage ────────────────────────────────────────────────────

class StorageUsageData {
  final int modelSizeBytes;
  final int totalFreeBytes;

  const StorageUsageData({
    required this.modelSizeBytes,
    required this.totalFreeBytes,
  });
}

final storageUsageProvider = FutureProvider.autoDispose<StorageUsageData>((
  ref,
) async {
  ref.watch(modelManagerProvider.select((s) => s.isDownloaded));

  final diskSizes = await RunAnywhereService.getModelDiskSizes();
  final modelSize = diskSizes[kDefaultModel.id] ?? 0;
  final freeMb = await DeviceChecker.getFreeStorageMb();
  final freeBytes = freeMb * 1024 * 1024;

  return StorageUsageData(modelSizeBytes: modelSize, totalFreeBytes: freeBytes);
});
