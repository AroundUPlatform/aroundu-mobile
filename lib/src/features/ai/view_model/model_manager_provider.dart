import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ai/device_checker.dart';
import '../../../core/ai/model_catalog.dart';
import '../../../core/ai/run_anywhere_service.dart';

// ── Per-model install state ─────────────────────────────────────────

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
  final List<String> downloadedIds;
  final String? activeModelId;
  final Map<String, ModelInstallState> installStates;

  const ModelManagerState({
    this.sdkReady = false,
    this.downloadedIds = const [],
    this.activeModelId,
    this.installStates = const {},
  });

  ModelManagerState copyWith({
    bool? sdkReady,
    List<String>? downloadedIds,
    String? Function()? activeModelId,
    Map<String, ModelInstallState>? installStates,
  }) {
    return ModelManagerState(
      sdkReady: sdkReady ?? this.sdkReady,
      downloadedIds: downloadedIds ?? this.downloadedIds,
      activeModelId: activeModelId != null
          ? activeModelId()
          : this.activeModelId,
      installStates: installStates ?? this.installStates,
    );
  }
}

// ── Notifier ────────────────────────────────────────────────────────

class ModelManagerNotifier extends Notifier<ModelManagerState> {
  @override
  ModelManagerState build() => const ModelManagerState();

  /// Initialize the RunAnywhere SDK and scan for already-downloaded models.
  Future<void> initSDK() async {
    if (state.sdkReady) return;

    await RunAnywhereService.ensureSDKInitialized();
    final ids = await RunAnywhereService.getDownloadedModelIds();
    final active = RunAnywhereService.currentModelId;

    state = state.copyWith(
      sdkReady: true,
      downloadedIds: ids,
      activeModelId: () => active,
    );
  }

  /// Download a model, then load it into memory and make it the active model.
  Future<void> downloadAndActivate(String id) async {
    _setInstall(id, const InstallDownloading(0));

    try {
      await RunAnywhereService.downloadModel(id, (progress) {
        _setInstall(id, InstallDownloading(progress));
      });

      _setInstall(id, const InstallLoading());
      await RunAnywhereService.loadModel(id);

      final ids = await RunAnywhereService.getDownloadedModelIds();

      state = state.copyWith(
        downloadedIds: ids,
        activeModelId: () => id,
        installStates: {...state.installStates, id: const InstallReady()},
      );
    } catch (e) {
      _setInstall(id, InstallError('$e'));
    }
  }

  /// Switch to an already-downloaded model.
  Future<void> activateModel(String id) async {
    if (state.activeModelId == id) return;

    _setInstall(id, const InstallLoading());

    try {
      await RunAnywhereService.loadModel(id);
      state = state.copyWith(
        activeModelId: () => id,
        installStates: {...state.installStates, id: const InstallReady()},
      );
    } catch (e) {
      _setInstall(id, InstallError('$e'));
    }
  }

  /// Remove a downloaded model from disk.
  Future<void> deleteModel(String id) async {
    try {
      await RunAnywhereService.deleteModel(id);
    } catch (_) {}

    final ids = await RunAnywhereService.getDownloadedModelIds();
    final newInstalls = Map<String, ModelInstallState>.of(state.installStates);
    newInstalls.remove(id);

    state = state.copyWith(
      downloadedIds: ids,
      activeModelId: () =>
          state.activeModelId == id ? null : state.activeModelId,
      installStates: newInstalls,
    );
  }

  void _setInstall(String id, ModelInstallState installState) {
    state = state.copyWith(
      installStates: {...state.installStates, id: installState},
    );
  }
}

// ── Providers ───────────────────────────────────────────────────────

final modelManagerProvider =
    NotifierProvider<ModelManagerNotifier, ModelManagerState>(
      ModelManagerNotifier.new,
    );

/// The [ModelSpec] of the currently loaded (active) model, or `null`.
final activeModelSpecProvider = Provider<ModelSpec?>((ref) {
  final id = ref.watch(modelManagerProvider.select((s) => s.activeModelId));
  if (id == null) return null;
  return findModelSpec(id);
});

/// [ModelSpec] list for every model whose file is on disk.
final downloadedModelSpecsProvider = Provider<List<ModelSpec>>((ref) {
  final ids = ref.watch(modelManagerProvider.select((s) => s.downloadedIds));
  return ids.map(findModelSpec).whereType<ModelSpec>().toList();
});

// ── Storage usage ────────────────────────────────────────────────────

class StorageUsageData {
  final Map<String, int> modelSizeBytes;
  final int totalUsedBytes;
  final int totalFreeBytes;

  const StorageUsageData({
    required this.modelSizeBytes,
    required this.totalUsedBytes,
    required this.totalFreeBytes,
  });

  int get totalCapacityBytes => totalUsedBytes + totalFreeBytes;
}

final storageUsageProvider = FutureProvider.autoDispose<StorageUsageData>((
  ref,
) async {
  ref.watch(modelManagerProvider.select((s) => s.downloadedIds));

  final diskSizes = await RunAnywhereService.getModelDiskSizes();
  final totalUsed = diskSizes.values.fold<int>(0, (a, b) => a + b);
  final freeMb = await DeviceChecker.getFreeStorageMb();
  final freeBytes = freeMb * 1024 * 1024;

  return StorageUsageData(
    modelSizeBytes: diskSizes,
    totalUsedBytes: totalUsed,
    totalFreeBytes: freeBytes,
  );
});
