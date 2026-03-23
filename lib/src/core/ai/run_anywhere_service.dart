import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:runanywhere/runanywhere.dart';
import 'package:runanywhere_llamacpp/runanywhere_llamacpp.dart';

import '../logging/app_logger.dart';
import 'model_catalog.dart';

/// Low-level bridge to RunAnywhere SDK.
///
/// All methods are static — no Riverpod [Ref] needed. The provider layer
/// ([ModelManagerNotifier]) sits on top and manages state.
class RunAnywhereService {
  RunAnywhereService._();

  static final _log = AppLogger.tag('AI/Inference');

  static bool _sdkReady = false;

  // ── SDK lifecycle ──────────────────────────────────────────────────

  /// Idempotent SDK init: `initialize()` → `register()` → add all catalog
  /// models. Safe to call multiple times.
  static Future<void> ensureSDKInitialized() async {
    if (_sdkReady) return;

    await RunAnywhere.initialize();
    await LlamaCpp.register();

    LlamaCpp.addModel(
      id: kDefaultModel.id,
      name: kDefaultModel.name,
      url: kDefaultModel.url,
      memoryRequirement: kDefaultModel.memoryBytes,
    );

    _sdkReady = true;
  }

  /// Whether the SDK has been initialized.
  static bool get isSdkReady => _sdkReady;

  // ── Model queries ─────────────────────────────────────────────────

  /// Returns the IDs of all models whose files are already on disk.
  static Future<List<String>> getDownloadedModelIds() async {
    final models = await RunAnywhere.availableModels();
    return models.where((m) => m.localPath != null).map((m) => m.id).toList();
  }

  /// Whether a specific model file is already downloaded locally.
  static Future<bool> isModelDownloaded(String id) async {
    final models = await RunAnywhere.availableModels();
    final match = models.where((m) => m.id == id);
    if (match.isEmpty) return false;
    return match.first.localPath != null;
  }

  // ── Download / load / delete ──────────────────────────────────────

  /// Download a model and report progress via [onProgress].
  ///
  /// [onProgress] receives both a 0.0–1.0 fraction and the raw bytes
  /// downloaded so far — enabling speed and size display.
  static Future<void> downloadModel(
    String id,
    void Function(double progress, double bytesDownloaded) onProgress,
  ) async {
    await for (final p in RunAnywhere.downloadModel(id)) {
      onProgress(p.percentage, p.bytesDownloaded.toDouble());
      if (p.state.isCompleted) break;
    }
  }

  /// Load a model into memory.
  static Future<void> loadModel(String id) async {
    if (RunAnywhere.isModelLoaded && RunAnywhere.currentModelId == id) return;
    await RunAnywhere.loadModel(id);
  }

  /// Delete a downloaded model file from disk.
  static Future<void> deleteModel(String id) async {
    if (RunAnywhere.isModelLoaded && RunAnywhere.currentModelId == id) {
      try {
        await RunAnywhere.unloadModel();
      } catch (_) {}
    }
    await RunAnywhere.deleteStoredModel(id);
  }

  /// The ID of the model currently loaded in memory (if any).
  static String? get currentModelId =>
      RunAnywhere.isModelLoaded ? RunAnywhere.currentModelId : null;

  /// Returns the actual on-disk file size (bytes) for every downloaded model.
  static Future<Map<String, int>> getModelDiskSizes() async {
    final models = await RunAnywhere.availableModels();
    final result = <String, int>{};

    for (final m in models) {
      final path = m.localPath;
      if (path == null) continue;
      try {
        final file = File.fromUri(path);
        if (await file.exists()) {
          result[m.id] = await file.length();
          continue;
        }
      } catch (_) {}
      final spec = findModelSpec(m.id);
      if (spec != null) result[m.id] = spec.storageBytes;
    }

    return result;
  }

  // ── Prompt templates for AroundU use-cases ─────────────────────────

  /// Streams tokens from the on-device LLM.
  ///
  /// In debug builds the full prompt is logged before inference starts and
  /// the raw token stream (Chain-of-Thought) is flushed to [_log] in
  /// real-time so developers can watch the model "think".
  static Stream<String> generateStream(
    String userPrompt, {
    required String systemPrompt,
    int maxTokens = 600,
    double temperature = 0.3,
  }) async* {
    if (kDebugMode) {
      _log.t(
        '───── INFERENCE INPUT ─────────────────────────────\n'
        '[SYSTEM]\n$systemPrompt\n\n'
        '[USER]\n$userPrompt\n'
        '───────────────────────────────────────────────────',
      );
      _log.d(
        'Inference start  maxTokens=$maxTokens  temp=$temperature  '
        'topP=0.9  model=${kDefaultModel.id}',
      );
    }

    final started = DateTime.now();
    var tokenCount = 0;
    final cotBuffer = StringBuffer();

    final streamResult = await RunAnywhere.generateStream(
      userPrompt,
      options: LLMGenerationOptions(
        maxTokens: maxTokens,
        temperature: temperature,
        topP: 0.9,
        systemPrompt: systemPrompt,
      ),
    );

    await for (final token in streamResult.stream) {
      tokenCount++;
      yield token;

      if (kDebugMode) {
        cotBuffer.write(token);
        if (cotBuffer.length >= 60 || token.contains('\n')) {
          _log.t('⟩ ${cotBuffer.toString().replaceAll('\n', '↵')}');
          cotBuffer.clear();
        }
      }
    }

    if (kDebugMode) {
      if (cotBuffer.isNotEmpty) {
        _log.t('⟩ ${cotBuffer.toString().replaceAll('\n', '↵')}');
      }
      final elapsedMs = DateTime.now().difference(started).inMilliseconds;
      final tokPerSec = elapsedMs > 0
          ? (tokenCount * 1000 / elapsedMs).toStringAsFixed(1)
          : '∞';
      _log.d(
        'Inference done  tokens=$tokenCount  '
        'elapsed=${elapsedMs}ms  $tokPerSec tok/s',
      );
    }
  }
}
