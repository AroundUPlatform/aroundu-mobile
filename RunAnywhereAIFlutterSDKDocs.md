# Best Practices
Source: https://docs.runanywhere.ai/flutter/best-practices

Optimize performance and user experience

Follow these best practices to build high-quality AI-powered Flutter apps.

<Tip>
  **Reference Implementation:** The [Flutter Starter
  Example](https://github.com/RunanywhereAI/flutter-starter-example) demonstrates all these best
  practices in a production-ready app.
</Tip>

## Model Selection

Choose the right model size for your use case:

| Model Size     | RAM Required | Use Case               | Example      |
| -------------- | ------------ | ---------------------- | ------------ |
| 360M–500M (Q8) | \~500MB      | Fast chat, commands    | SmolLM2-360M |
| 1B–3B (Q4/Q6)  | 1–2GB        | Balanced quality/speed | Qwen2.5-1.5B |
| 7B (Q4)        | 4–5GB        | High quality           | Llama-3.2-7B |

<Tip>
  **Start small** — Use the smallest model that meets your quality needs. You can always upgrade
  later.
</Tip>

## Memory Management

### Unload Unused Models

```dart theme={null}
// Unload when not in use
await RunAnywhere.unloadModel();
await RunAnywhere.unloadSTTModel();
await RunAnywhere.unloadTTSVoice();
```

### Check Available Memory

```dart theme={null}
final storageInfo = await RunAnywhere.getStorageInfo();
final freeSpace = storageInfo.deviceStorage.freeSpace;

// Ensure enough space before downloading
final model = await RunAnywhere.availableModels()
    .then((m) => m.firstWhere((m) => m.id == 'my-model'));

if (model.downloadSize != null && model.downloadSize! * 2 > freeSpace) {
  showError('Not enough storage. Need ${model.downloadSize! * 2} bytes.');
}
```

### Clean Up Old Models

```dart theme={null}
// Delete unused models
await RunAnywhere.deleteStoredModel('old-model-id');

// Get storage usage
final models = await RunAnywhere.getDownloadedModelsWithInfo();
for (final model in models) {
  print('${model.id}: ${(model.size / 1024 / 1024).toStringAsFixed(1)} MB');
}
```

## Streaming for Better UX

Always prefer streaming for chat interfaces:

```dart theme={null}
// ✅ Good: Streaming shows progress
final result = await RunAnywhere.generateStream(prompt);
await for (final token in result.stream) {
  setState(() => _response += token);
}

// ❌ Avoid: User waits with no feedback
final response = await RunAnywhere.generate(prompt);
setState(() => _response = response.text);
```

## Preload Models

Load models during idle time, not when user needs them:

```dart theme={null}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _preloadModels();  // Load in background
  }

  Future<void> _preloadModels() async {
    // Download if needed
    final models = await RunAnywhere.availableModels();
    final llm = models.firstWhere((m) => m.id == 'smollm2-360m-q8_0');

    if (!llm.isDownloaded) {
      await for (final p in RunAnywhere.downloadModel(llm.id)) {
        if (p.state.isCompleted) break;
      }
    }

    // Preload into memory
    await RunAnywhere.loadModel(llm.id);
  }
}
```

## Error Handling

Always handle errors gracefully:

```dart theme={null}
Future<void> generateResponse(String prompt) async {
  try {
    final result = await RunAnywhere.generate(prompt);
    setState(() => _response = result.text);
  } on SDKError catch (e) {
    setState(() => _error = _getUserFriendlyMessage(e));
  } catch (e) {
    setState(() => _error = 'Something went wrong. Please try again.');
  }
}

String _getUserFriendlyMessage(SDKError error) {
  // Convert technical errors to user-friendly messages
  switch (error.type) {
    case SDKErrorType.componentNotReady:
      return 'AI is loading. Please wait...';
    case SDKErrorType.generationFailed:
      return 'Could not generate response. Try again.';
    default:
      return 'An error occurred.';
  }
}
```

## Test on Physical Devices

<Warning>
  **Always test on real devices** — Emulators are significantly slower for AI inference. Performance
  you see in emulators is not representative of real-world usage.
</Warning>

* iOS Simulator: 5-10x slower than device
* Android Emulator: 3-5x slower than device

## Download Management

### Show Progress

```dart theme={null}
Widget _buildDownloadProgress(String modelId) {
  return StreamBuilder<DownloadProgress>(
    stream: RunAnywhere.downloadModel(modelId),
    builder: (context, snapshot) {
      if (!snapshot.hasData) return CircularProgressIndicator();

      final progress = snapshot.data!;
      return Column(
        children: [
          LinearProgressIndicator(value: progress.percentage),
          Text('${(progress.percentage * 100).toStringAsFixed(0)}%'),
          Text('${(progress.bytesDownloaded / 1024 / 1024).toStringAsFixed(1)} MB'),
        ],
      );
    },
  );
}
```

### Download on WiFi

```dart theme={null}
import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> shouldDownload() async {
  final connectivity = await Connectivity().checkConnectivity();
  return connectivity.contains(ConnectivityResult.wifi);
}

Future<void> downloadWithCheck(String modelId) async {
  if (!await shouldDownload()) {
    final proceed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Download on Cellular?'),
        content: Text('This model is large. Download on WiFi to save data.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text('Wait for WiFi')),
          TextButton(onPressed: () => Navigator.pop(ctx, true), child: Text('Download Now')),
        ],
      ),
    );
    if (proceed != true) return;
  }

  await for (final p in RunAnywhere.downloadModel(modelId)) {
    if (p.state.isCompleted) break;
  }
}
```

## Voice Assistant Tips

### Optimize Latency

```dart theme={null}
// Load all components during initialization
await Future.wait([
  RunAnywhere.loadSTTModel('whisper-tiny-en'),
  RunAnywhere.loadModel('smollm2-360m-q8_0'),
  RunAnywhere.loadTTSVoice('piper-en-us-amy'),
]);
```

### Handle Background/Foreground

```dart theme={null}
class VoiceApp extends StatefulWidget {
  @override
  _VoiceAppState createState() => _VoiceAppState();
}

class _VoiceAppState extends State<VoiceApp> with WidgetsBindingObserver {
  VoiceSessionHandle? _session;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _session?.stop();  // Stop when app goes to background
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _session?.stop();
    super.dispose();
  }
}
```

## Performance Monitoring

Track performance metrics:

```dart theme={null}
final result = await RunAnywhere.generate(prompt);

// Log performance
analytics.logEvent('generation', {
  'tokens': result.tokensUsed,
  'latency_ms': result.latencyMs,
  'tokens_per_second': result.tokensPerSecond,
  'model': result.modelUsed,
});
```

## Flutter Platform Gotchas

### iOS: Static Linkage is Critical

The Podfile **must** use `use_frameworks! :linkage => :static`. Without it, `RACommons` symbols from vendored xcframeworks won't link properly and you'll get runtime crashes.

### iOS: Permission Preprocessor Macros

The `permission_handler_apple` pod requires preprocessor definitions to enable permissions. Without `PERMISSION_MICROPHONE=1` and `PERMISSION_SPEECH_RECOGNIZER=1`, permission requests will silently fail at runtime:

```ruby theme={null}
config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= [
  '$(inherited)',
  'PERMISSION_MICROPHONE=1',
  'PERMISSION_SPEECH_RECOGNIZER=1',
]
```

### TTS: WAV File Construction Required

`RunAnywhere.synthesize()` returns raw `Float32List` samples, not a playable audio file. You must manually construct a WAV header and convert Float32 to Int16 PCM, then save to a temp file for playback:

```dart theme={null}
// Build WAV from Float32 samples
final int16Data = result.samples.map((s) => (s * 32767).clamp(-32768, 32767).toInt());
// Write WAV header + int16Data to temp file
// Play via audioplayers DeviceFileSource
```

iOS `AVPlayer` requires a proper file extension (`.wav`) and WAV header — it cannot play raw PCM bytes.

### Audio Format for STT

The `record` package must be configured with `AudioEncoder.pcm16bits`, `sampleRate: 16000`, `numChannels: 1`. `RunAnywhere.transcribe()` expects raw PCM16 `Uint8List` data at 16kHz mono. Minimum data threshold: \~1600 bytes (\~0.1s).

### Tool Calling Uses RunAnywhereTools

Tool registration and generation with tools uses the `RunAnywhereTools` class, not `RunAnywhere`:

```dart theme={null}
RunAnywhereTools.clearTools();
RunAnywhereTools.registerTool(definition, handler);
final result = await RunAnywhereTools.generateWithTools(prompt, options: options);
```

### Model Downloaded Check

To check if a model is already downloaded, query `RunAnywhere.availableModels()` and check if the matching model's `localPath` is non-null. There is no direct `isDownloaded(id)` API.

### Gradle JVM Memory

Android builds may require higher JVM memory allocation (`-Xmx8G`) due to native SDK compilation requirements.

## Summary Checklist

<AccordionGroup>
  <Accordion title="Before Launch" icon="rocket">
    * [ ] Test on physical devices (iOS and Android)
    * [ ] Handle all error cases with user-friendly messages
    * [ ] Implement download progress UI
    * [ ] Add WiFi check for large downloads
    * [ ] Test with slow network conditions
  </Accordion>

  <Accordion title="Performance" icon="gauge-high">
    * [ ] Use smallest adequate model size - \[ ] Preload models during idle time - \[ ] Use streaming
      for chat interfaces - \[ ] Unload unused models - \[ ] Monitor memory usage
  </Accordion>

  <Accordion title="User Experience" icon="face-smile">
    * [ ] Show loading states clearly
    * [ ] Provide cancel option for long operations
    * [ ] Handle background/foreground transitions
    * [ ] Save conversation history locally
    * [ ] Allow model selection for power users
  </Accordion>
</AccordionGroup>

## See Also

<CardGroup>
  <Card title="Configuration" icon="gear" href="/flutter/configuration">
    SDK configuration
  </Card>

  <Card title="Error Handling" icon="triangle-exclamation" href="/flutter/error-handling">
    Handle errors gracefully
  </Card>
</CardGroup>



# Configuration
Source: https://docs.runanywhere.ai/flutter/configuration

SDK configuration options and environments

Configure the RunAnywhere SDK for different environments and use cases.

## SDK Initialization

```dart theme={null}
await RunAnywhere.initialize(
  apiKey: 'your-api-key',                    // Optional for development
  baseURL: 'https://api.runanywhere.ai',     // Optional for development
  environment: SDKEnvironment.production,    // development | staging | production
);
```

## Environment Modes

| Environment    | Description           | API Key  | Logging | Telemetry |
| -------------- | --------------------- | -------- | ------- | --------- |
| `.development` | Local development     | Optional | Verbose | Disabled  |
| `.staging`     | Testing with services | Required | Info    | Enabled   |
| `.production`  | Production deployment | Required | Minimal | Enabled   |

### Development Mode (Default)

```dart theme={null}
// No API key needed - perfect for local development
await RunAnywhere.initialize();

// Or explicitly set development mode
await RunAnywhere.initialize(
  environment: SDKEnvironment.development,
);
```

### Production Mode

```dart theme={null}
await RunAnywhere.initialize(
  apiKey: 'your-production-api-key',
  baseURL: 'https://api.runanywhere.ai',
  environment: SDKEnvironment.production,
);
```

## Check SDK State

```dart theme={null}
// Version
print('SDK Version: ${RunAnywhere.version}');

// Initialization state
print('Initialized: ${RunAnywhere.isSDKInitialized}');
print('Active: ${RunAnywhere.isActive}');
print('Environment: ${RunAnywhere.environment}');

// Model states
print('LLM loaded: ${RunAnywhere.isModelLoaded}');
print('Current model: ${RunAnywhere.currentModelId}');
print('STT loaded: ${RunAnywhere.isSTTModelLoaded}');
print('TTS loaded: ${RunAnywhere.isTTSVoiceLoaded}');
print('Voice Agent ready: ${RunAnywhere.isVoiceAgentReady}');
```

## Generation Options

Configure text generation behavior:

```dart theme={null}
final options = LLMGenerationOptions(
  maxTokens: 256,              // Maximum tokens to generate
  temperature: 0.7,            // Randomness (0.0–2.0)
  topP: 0.95,                  // Nucleus sampling
  stopSequences: ['END'],      // Stop at these sequences
  systemPrompt: 'You are a helpful assistant.',
);

final result = await RunAnywhere.generate(prompt, options: options);
```

### Generation Parameters

| Parameter       | Type           | Default | Range   | Description              |
| --------------- | -------------- | ------- | ------- | ------------------------ |
| `maxTokens`     | `int`          | 100     | 1–4096  | Maximum output length    |
| `temperature`   | `double`       | 0.8     | 0.0–2.0 | Higher = more creative   |
| `topP`          | `double`       | 1.0     | 0.0–1.0 | Nucleus sampling         |
| `stopSequences` | `List<String>` | `[]`    | -       | Stop generation triggers |
| `systemPrompt`  | `String?`      | `null`  | -       | System context           |

## Voice Session Configuration

```dart theme={null}
final config = VoiceSessionConfig(
  silenceDuration: 1.5,     // Seconds of silence before processing
  speechThreshold: 0.03,    // Audio level for speech detection
  autoPlayTTS: true,        // Auto-play synthesized audio
  continuousMode: true,     // Resume listening after TTS
);

final session = await RunAnywhere.startVoiceSession(config: config);
```

## Model Registration

### LLM Models (GGUF)

```dart theme={null}
LlamaCpp.addModel(
  id: 'my-llm-model',
  name: 'My LLM Model',
  url: 'https://huggingface.co/.../model.gguf',
  memoryRequirement: 500000000,  // 500MB
  supportsThinking: false,        // Chain-of-thought support
);
```

### STT Models

```dart theme={null}
Onnx.addModel(
  id: 'my-stt-model',
  name: 'My STT Model',
  url: 'https://example.com/stt-model.tar.gz',
  modality: ModelCategory.speechRecognition,
  memoryRequirement: 75000000,  // 75MB
);
```

### TTS Voices

```dart theme={null}
Onnx.addModel(
  id: 'my-tts-voice',
  name: 'My TTS Voice',
  url: 'https://example.com/tts-voice.tar.gz',
  modality: ModelCategory.speechSynthesis,
  memoryRequirement: 50000000,  // 50MB
);
```

## Storage Management

```dart theme={null}
// Get storage information
final storageInfo = await RunAnywhere.getStorageInfo();
print('Free space: ${storageInfo.deviceStorage.freeSpace} bytes');

// Get downloaded models with sizes
final models = await RunAnywhere.getDownloadedModelsWithInfo();
for (final model in models) {
  print('${model.id}: ${model.size} bytes');
}

// Delete a model
await RunAnywhere.deleteStoredModel('old-model-id');

// Refresh model discovery
await RunAnywhere.refreshDiscoveredModels();
```

## Reset SDK

```dart theme={null}
// Reset SDK state (for testing or reinitialization)
RunAnywhere.reset();
```

## Environment Variables

For production apps, store sensitive configuration securely:

```dart theme={null}
import 'package:flutter_dotenv/flutter_dotenv.dart';

await dotenv.load();

await RunAnywhere.initialize(
  apiKey: dotenv.env['RUNANYWHERE_API_KEY'],
  baseURL: dotenv.env['RUNANYWHERE_BASE_URL'],
  environment: SDKEnvironment.production,
);
```

## See Also

<CardGroup>
  <Card title="Error Handling" icon="triangle-exclamation" href="/flutter/error-handling">
    Handle SDK errors
  </Card>

  <Card title="Best Practices" icon="star" href="/flutter/best-practices">
    Optimization tips
  </Card>
</CardGroup>



# Error Handling
Source: https://docs.runanywhere.ai/flutter/error-handling

Handle SDK errors gracefully

The SDK provides comprehensive error handling through `SDKError` with specific error codes for different failure scenarios.

## Basic Error Handling

```dart theme={null}
try {
  await RunAnywhere.loadModel('my-model');
  final result = await RunAnywhere.generate('Hello');
  print(result.text);
} on SDKError catch (error) {
  print('Error: ${error.message}');
  print('Type: ${error.type}');
}
```

## Error Categories

| Category     | Description             | Common Errors      |
| ------------ | ----------------------- | ------------------ |
| `general`    | General SDK errors      | notInitialized     |
| `llm`        | LLM generation errors   | generationFailed   |
| `stt`        | Speech-to-text errors   | sttNotAvailable    |
| `tts`        | Text-to-speech errors   | ttsNotAvailable    |
| `voiceAgent` | Voice pipeline errors   | voiceAgentNotReady |
| `download`   | Model download errors   | downloadFailed     |
| `validation` | Input validation errors | validationFailed   |

## Handling Specific Errors

```dart theme={null}
try {
  await RunAnywhere.loadModel('my-model');
  final result = await RunAnywhere.generate('Hello!');
} on SDKError catch (error) {
  switch (error.type) {
    case SDKErrorType.notInitialized:
      // SDK not initialized
      showError('Please restart the app');
      await RunAnywhere.initialize();
      break;

    case SDKErrorType.modelNotFound:
      // Model not registered
      showError('Model not found. Please check the model ID.');
      break;

    case SDKErrorType.modelNotDownloaded:
      // Model needs to be downloaded first
      showError('Model not downloaded. Downloading now...');
      await downloadModel('my-model');
      break;

    case SDKErrorType.componentNotReady:
      // Component not loaded
      showError('Model not loaded. Loading now...');
      await RunAnywhere.loadModel('my-model');
      break;

    case SDKErrorType.generationFailed:
      // Generation failed
      showError('Generation failed. Please try again.');
      break;

    default:
      showError('Error: ${error.message}');
  }
}
```

## SDKError Factory Methods

Common error types with factory constructors:

```dart theme={null}
// Check error types
if (error == SDKError.notInitialized()) {
  // Handle not initialized
}

if (error == SDKError.modelNotFound('model-id')) {
  // Handle model not found
}

if (error == SDKError.modelNotDownloaded('model-id')) {
  // Handle model not downloaded
}

if (error == SDKError.componentNotReady('LLM')) {
  // Handle component not ready
}
```

## STT/TTS Specific Errors

```dart theme={null}
try {
  final text = await RunAnywhere.transcribe(audioBytes);
} on SDKError catch (error) {
  switch (error.type) {
    case SDKErrorType.sttNotAvailable:
      showError('Speech recognition not available. Load an STT model.');
      break;
    case SDKErrorType.componentNotReady:
      showError('STT model not loaded.');
      await RunAnywhere.loadSTTModel('whisper-tiny-en');
      break;
    default:
      showError('Transcription failed: ${error.message}');
  }
}

try {
  final result = await RunAnywhere.synthesize('Hello');
} on SDKError catch (error) {
  switch (error.type) {
    case SDKErrorType.ttsNotAvailable:
      showError('Text-to-speech not available. Load a TTS voice.');
      break;
    case SDKErrorType.componentNotReady:
      showError('TTS voice not loaded.');
      await RunAnywhere.loadTTSVoice('piper-en-us-amy');
      break;
    default:
      showError('Synthesis failed: ${error.message}');
  }
}
```

## Voice Agent Errors

```dart theme={null}
try {
  final session = await RunAnywhere.startVoiceSession();
} on SDKError catch (error) {
  if (error.type == SDKErrorType.voiceAgentNotReady) {
    // Check which component is missing
    final states = RunAnywhere.getVoiceAgentComponentStates();

    if (states.stt != ComponentLoadState.loaded) {
      showError('STT model not loaded');
      await RunAnywhere.loadSTTModel('whisper-tiny-en');
    }
    if (states.llm != ComponentLoadState.loaded) {
      showError('LLM model not loaded');
      await RunAnywhere.loadModel('smollm2-360m');
    }
    if (states.tts != ComponentLoadState.loaded) {
      showError('TTS voice not loaded');
      await RunAnywhere.loadTTSVoice('piper-en-us-amy');
    }
  }
}
```

## Download Errors

```dart theme={null}
try {
  await for (final progress in RunAnywhere.downloadModel('my-model')) {
    if (progress.state == DownloadProgressState.failed) {
      throw SDKError.downloadFailed('my-model', 'Download failed');
    }
    if (progress.state.isCompleted) break;
  }
} on SDKError catch (error) {
  showError('Failed to download model: ${error.message}');
  // Suggest checking internet connection
  showRetryOption();
}
```

## User-Friendly Error Messages

Create a helper to convert errors to user-friendly messages:

```dart theme={null}
String getUserFriendlyMessage(SDKError error) {
  switch (error.type) {
    case SDKErrorType.notInitialized:
      return 'The app needs to restart. Please close and reopen the app.';
    case SDKErrorType.modelNotFound:
      return 'The AI model could not be found. Please check your settings.';
    case SDKErrorType.modelNotDownloaded:
      return 'This feature needs to download data first. Please connect to WiFi.';
    case SDKErrorType.componentNotReady:
      return 'Loading AI features... Please wait a moment.';
    case SDKErrorType.generationFailed:
      return 'Something went wrong. Please try again.';
    case SDKErrorType.sttNotAvailable:
      return 'Voice recognition is not available right now.';
    case SDKErrorType.ttsNotAvailable:
      return 'Voice output is not available right now.';
    default:
      return 'An error occurred. Please try again later.';
  }
}
```

## Error Widget Pattern

```dart theme={null}
class ErrorHandler extends StatelessWidget {
  final Widget child;
  final Function(SDKError) onError;

  const ErrorHandler({
    required this.child,
    required this.onError,
  });

  @override
  Widget build(BuildContext context) {
    return child;
  }

  static void handle(BuildContext context, SDKError error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(getUserFriendlyMessage(error)),
        action: SnackBarAction(
          label: 'Retry',
          onPressed: () {
            // Implement retry logic
          },
        ),
      ),
    );
  }
}
```

## See Also

<CardGroup>
  <Card title="Configuration" icon="gear" href="/flutter/configuration">
    SDK configuration
  </Card>

  <Card title="Best Practices" icon="star" href="/flutter/best-practices">
    Optimization tips
  </Card>
</CardGroup>



# Installation
Source: https://docs.runanywhere.ai/flutter/installation

Install the RunAnywhere Flutter SDK

## Packages on pub.dev

The RunAnywhere Flutter SDK consists of three packages:

| Package                                                                 | Description                           | pub.dev                                                                                                                |
| ----------------------------------------------------------------------- | ------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| [`runanywhere`](https://pub.dev/packages/runanywhere)                   | Core SDK with APIs and infrastructure | [![pub package](https://img.shields.io/pub/v/runanywhere.svg)](https://pub.dev/packages/runanywhere)                   |
| [`runanywhere_llamacpp`](https://pub.dev/packages/runanywhere_llamacpp) | LLM text generation (GGUF models)     | [![pub package](https://img.shields.io/pub/v/runanywhere_llamacpp.svg)](https://pub.dev/packages/runanywhere_llamacpp) |
| [`runanywhere_onnx`](https://pub.dev/packages/runanywhere_onnx)         | STT, TTS, VAD (ONNX models)           | [![pub package](https://img.shields.io/pub/v/runanywhere_onnx.svg)](https://pub.dev/packages/runanywhere_onnx)         |

## Add Dependencies

Add the packages you need to your `pubspec.yaml`:

<Tabs>
  <Tab title="LLM Only">
    Add these dependencies to `pubspec.yaml`:

    ```yaml theme={null}
    dependencies:
      runanywhere: ^0.16.0
      runanywhere_llamacpp: ^0.16.0
    ```
  </Tab>

  <Tab title="STT/TTS Only">
    Add these dependencies to `pubspec.yaml`:

    ```yaml theme={null}
    dependencies:
      runanywhere: ^0.16.0
      runanywhere_onnx: ^0.16.0
    ```
  </Tab>

  <Tab title="All Features">
    Add these dependencies to `pubspec.yaml`:

    ```yaml theme={null}
    dependencies:
      runanywhere: ^0.16.0
      runanywhere_llamacpp: ^0.16.0
      runanywhere_onnx: ^0.16.0
    ```
  </Tab>
</Tabs>

Then run:

```bash theme={null}
flutter pub get
```

## iOS Setup (Required)

After adding the packages, update your iOS configuration:

### 1. Update Podfile

Open `ios/Podfile` and update:

```ruby ios/Podfile theme={null}

# Introduction
Source: https://docs.runanywhere.ai/flutter/introduction

RunAnywhere Flutter SDK for iOS and Android

<div>
  <button>
    Copy Full Flutter SDK Docs for AI Agent
  </button>
</div>

<div>
  ## Overview

  The **RunAnywhere Flutter SDK** is a production-grade, on-device AI SDK for Flutter applications. It enables developers to run AI models directly on iOS and Android devices without requiring network connectivity for inference, ensuring minimal latency and maximum privacy for your users.

  The SDK provides a unified interface to multiple AI capabilities:

  <CardGroup>
    <Card title="LLM" icon="brain" href="/flutter/llm/chat">
      Text generation with streaming support via Dart Streams
    </Card>

    <Card title="STT" icon="microphone" href="/flutter/stt/transcribe">
      Speech-to-text transcription with Whisper models
    </Card>

    <Card title="TTS" icon="volume-high" href="/flutter/tts/synthesize">
      Neural voice synthesis with Piper TTS
    </Card>

    <Card title="Tool Calling" icon="wrench" href="/flutter/tool-calling">
      Function calling with RunAnywhereTools and sealed ToolValue types
    </Card>

    <Card title="VAD" icon="waveform" href="/flutter/vad">
      Real-time voice activity detection with Silero VAD
    </Card>
  </CardGroup>

  ## Key Capabilities

  * **Multi-backend architecture** – Choose from LlamaCPP (GGUF models) or ONNX Runtime
  * **Cross-platform** – Single codebase for iOS and Android
  * **Dart-native** – Built with async/await and Streams for reactive programming
  * **Production-ready** – Built-in analytics, logging, and model lifecycle management

  ## Core Philosophy

  <AccordionGroup>
    <Accordion title="On-Device First" icon="microchip">
      All AI inference runs locally, ensuring low latency and data privacy. Once models are
      downloaded, no network connection is required for inference.
    </Accordion>

    <Accordion title="Modular Backends" icon="puzzle-piece">
      Backend engines are separate packages—include only what you need. This keeps your app bundle
      size minimal.
    </Accordion>

    <Accordion title="Privacy by Design" icon="shield-check">
      Audio and text data never leaves the device unless explicitly configured. Only anonymous
      analytics are collected by default.
    </Accordion>

    <Accordion title="Event-Driven" icon="bell">
      Subscribe to SDK events for reactive UI updates and observability.
    </Accordion>
  </AccordionGroup>

  ## Features

  ### Language Models (LLM)

  * On-device text generation with streaming support
  * Dart Stream-based token streaming
  * System prompts and customizable generation parameters
  * Support for thinking/reasoning models
  * LlamaCPP backend for GGUF models

  ### Speech-to-Text (STT)

  * Real-time streaming transcription
  * Batch audio transcription
  * Multi-language support
  * Whisper-based models via ONNX Runtime

  ### Text-to-Speech (TTS)

  * Neural voice synthesis with Piper TTS
  * System voices via platform TTS
  * Streaming audio generation for long text
  * Customizable voice, pitch, rate, and volume

  ### Voice Activity Detection (VAD)

  * Energy-based speech detection with Silero VAD
  * Configurable sensitivity thresholds
  * Real-time audio stream processing

  ### Tool Calling

  * Register typed tool definitions via RunAnywhereTools
  * Automatic tool execution with configurable limits
  * Dart 3 sealed class ToolValue types with pattern matching
  * Multi-tool chaining for complex agent workflows

  ### Voice Agent Pipeline

  * Full VAD → STT → LLM → TTS orchestration
  * Complete voice conversation flow
  * Push-to-talk and hands-free modes

  ## System Requirements

  | Platform | Minimum Version |
  | -------- | --------------- |
  | Flutter  | 3.10.0+         |
  | Dart     | 3.0.0+          |
  | iOS      | 14.0+           |
  | Android  | API 24 (7.0+)   |

  <Note>
    ARM64 devices are recommended for best performance. Metal GPU acceleration on iOS and NEON SIMD on
    Android provide significant speedups over CPU-only inference.
  </Note>

  ## Package Composition

  | Package                | Size      | Purpose                              |
  | ---------------------- | --------- | ------------------------------------ |
  | `runanywhere`          | \~5MB     | Core SDK (required)                  |
  | `runanywhere_llamacpp` | \~15-25MB | LLM text generation with GGUF models |
  | `runanywhere_onnx`     | \~50-70MB | STT/TTS/VAD via ONNX Runtime         |

  ## Architecture

  ```mermaid theme={null}
  graph TB
      A(Your Flutter Application)
      A --> B(RunAnywhere Flutter SDK)

      B --> C(RunAnywhere API)
      B --> D(EventBus)
      B --> E(ModelRegistry)

      C & D & E --> F(DartBridge - FFI to C++)

      F --> G(LlamaCpp - LLM)
      F --> H(ONNX - STT/TTS/VAD)
      F --> I(Future Backends)

      style A fill:#334155,color:#fff,stroke:#334155
      style B fill:#ff6900,color:#fff,stroke:#ff6900
      style C fill:#ff6900,color:#fff,stroke:#ff6900
      style D fill:#475569,color:#fff,stroke:#475569
      style E fill:#475569,color:#fff,stroke:#475569
      style F fill:#fb2c36,color:#fff,stroke:#fb2c36
      style G fill:#475569,color:#fff,stroke:#475569
      style H fill:#475569,color:#fff,stroke:#475569
      style I fill:#475569,color:#fff,stroke:#475569
  ```

  ## Starter Example

  <Card title="Flutter Starter Example" icon="github" href="https://github.com/RunanywhereAI/flutter-starter-example">
    Complete working example with LLM chat, STT, TTS, and Voice Agent demos
  </Card>

  ## Next Steps

  <CardGroup>
    <Card title="Installation" icon="download" href="/flutter/installation">
      Add the SDK packages via pub.dev
    </Card>

    <Card title="Quick Start" icon="rocket" href="/flutter/quick-start">
      Build your first AI feature in minutes
    </Card>
  </CardGroup>
</div>



# chat()
Source: https://docs.runanywhere.ai/flutter/llm/chat

Simple one-liner for quick text responses

The simplest way to generate text—returns just the response string.

```dart theme={null}
// One-liner for quick responses
final response = await RunAnywhere.chat('What is the capital of France?');
print(response);  // "The capital of France is Paris."
```

## When to Use

Use `chat()` when you:

* Need a quick response without metrics
* Don't need streaming
* Want the simplest possible API

## Requirements

Before calling `chat()`, ensure:

1. SDK is initialized: `await RunAnywhere.initialize()`
2. Backend is registered: `await LlamaCpp.register()`
3. Model is loaded: `await RunAnywhere.loadModel('model-id')`

## Example with Error Handling

```dart theme={null}
Future<String> askQuestion(String question) async {
  try {
    if (!RunAnywhere.isModelLoaded) {
      throw SDKError.componentNotReady('No model loaded');
    }
    return await RunAnywhere.chat(question);
  } on SDKError catch (e) {
    return 'Error: ${e.message}';
  }
}
```

## See Also

<CardGroup>
  <Card title="generate()" icon="sparkles" href="/flutter/llm/generate">
    Get response with metrics
  </Card>

  <Card title="generateStream()" icon="bolt" href="/flutter/llm/stream">
    Stream tokens in real-time
  </Card>
</CardGroup>



# generate()
Source: https://docs.runanywhere.ai/flutter/llm/generate

Full text generation with performance metrics

Generate text with detailed metrics including latency, token count, and generation speed.

```dart theme={null}
final result = await RunAnywhere.generate(
  'Explain quantum computing in simple terms',
  options: LLMGenerationOptions(
    maxTokens: 200,
    temperature: 0.7,
  ),
);

print('Response: ${result.text}');
print('Tokens: ${result.tokensUsed}');
print('Speed: ${result.tokensPerSecond.toStringAsFixed(1)} tok/s');
print('Latency: ${result.latencyMs.toStringAsFixed(0)}ms');
```

## LLMGenerationOptions

| Parameter       | Type           | Default | Description                |
| --------------- | -------------- | ------- | -------------------------- |
| `maxTokens`     | `int`          | 100     | Maximum tokens to generate |
| `temperature`   | `double`       | 0.8     | Randomness (0.0–2.0)       |
| `topP`          | `double`       | 1.0     | Nucleus sampling parameter |
| `stopSequences` | `List<String>` | `[]`    | Stop generation at these   |
| `systemPrompt`  | `String?`      | `null`  | System prompt for context  |

```dart theme={null}
const options = LLMGenerationOptions(
  maxTokens: 256,
  temperature: 0.7,
  topP: 0.95,
  stopSequences: ['END', '###'],
  systemPrompt: 'You are a helpful coding assistant.',
);
```

## LLMGenerationResult

| Property             | Type      | Description                     |
| -------------------- | --------- | ------------------------------- |
| `text`               | `String`  | Generated text                  |
| `thinkingContent`    | `String?` | Thinking content (if supported) |
| `inputTokens`        | `int`     | Number of input tokens          |
| `tokensUsed`         | `int`     | Number of output tokens         |
| `modelUsed`          | `String`  | Model ID used                   |
| `latencyMs`          | `double`  | Total latency in milliseconds   |
| `tokensPerSecond`    | `double`  | Generation speed                |
| `timeToFirstTokenMs` | `double?` | Time to first token             |

## Thinking Models

Some models support "thinking" tokens for chain-of-thought reasoning:

```dart theme={null}
LlamaCpp.addModel(
  id: 'qwen-cot',
  name: 'Qwen CoT',
  url: '...',
  supportsThinking: true,  // Enable thinking token parsing
);

final result = await RunAnywhere.generate('Solve: 2x + 5 = 15');

if (result.thinkingContent != null) {
  print('Reasoning: ${result.thinkingContent}');
}
print('Answer: ${result.text}');
```

## See Also

<CardGroup>
  <Card title="chat()" icon="comments" href="/flutter/llm/chat">
    Simple one-liner
  </Card>

  <Card title="generateStream()" icon="bolt" href="/flutter/llm/stream">
    Stream tokens in real-time
  </Card>
</CardGroup>



# generateStream()
Source: https://docs.runanywhere.ai/flutter/llm/stream

Stream tokens as they are generated for responsive UX

Stream tokens in real-time for a responsive user experience. Ideal for chat interfaces where users expect to see text appear progressively.

```dart theme={null}
final streamResult = await RunAnywhere.generateStream(
  'Tell me a story about a robot',
  options: LLMGenerationOptions(maxTokens: 500),
);

// Display tokens as they arrive
await for (final token in streamResult.stream) {
  stdout.write(token);  // Real-time output
  // Or update UI: setState(() => _response += token);
}

// Get final metrics after streaming completes
final metrics = await streamResult.result;
print('\n\nGenerated ${metrics.tokensUsed} tokens');
print('Speed: ${metrics.tokensPerSecond.toStringAsFixed(1)} tok/s');
```

## LLMStreamingResult

| Property | Type                          | Description               |
| -------- | ----------------------------- | ------------------------- |
| `stream` | `Stream<String>`              | Stream of tokens          |
| `result` | `Future<LLMGenerationResult>` | Final result with metrics |
| `cancel` | `void Function()`             | Cancel generation         |

## Flutter Widget Example

```dart theme={null}
class StreamingChatWidget extends StatefulWidget {
  @override
  _StreamingChatWidgetState createState() => _StreamingChatWidgetState();
}

class _StreamingChatWidgetState extends State<StreamingChatWidget> {
  String _response = '';
  bool _isStreaming = false;
  LLMStreamingResult? _currentStream;

  Future<void> _startStreaming(String prompt) async {
    setState(() {
      _response = '';
      _isStreaming = true;
    });

    try {
      _currentStream = await RunAnywhere.generateStream(
        prompt,
        options: LLMGenerationOptions(maxTokens: 300),
      );

      await for (final token in _currentStream!.stream) {
        setState(() => _response += token);
      }

      final metrics = await _currentStream!.result;
      print('Generated at ${metrics.tokensPerSecond.toStringAsFixed(1)} tok/s');
    } finally {
      setState(() => _isStreaming = false);
    }
  }

  void _cancelStreaming() {
    _currentStream?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Text(_response),
          ),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: _isStreaming ? null : () => _startStreaming('Tell me a joke'),
              child: Text('Generate'),
            ),
            if (_isStreaming)
              TextButton(
                onPressed: _cancelStreaming,
                child: Text('Cancel'),
              ),
          ],
        ),
      ],
    );
  }
}
```

## Cancellation

Cancel ongoing generation at any time:

```dart theme={null}
final streamResult = await RunAnywhere.generateStream('Long story...');

// Start a timer to cancel after 5 seconds
Future.delayed(Duration(seconds: 5), () {
  streamResult.cancel();
  print('Generation cancelled');
});

// Or cancel via the static method
await RunAnywhere.cancelGeneration();
```

## Best Practices

<Tip>
  **Use streaming for chat interfaces** — Users perceive the app as more responsive when they see
  tokens appear progressively, even if total generation time is the same.
</Tip>

1. **Update UI incrementally** — Append tokens to your state as they arrive
2. **Show a cancel button** — Let users stop long generations
3. **Handle cancellation gracefully** — The stream will complete when cancelled
4. **Get final metrics** — Always await `result` for accurate performance data

## See Also

<CardGroup>
  <Card title="chat()" icon="comments" href="/flutter/llm/chat">
    Simple one-liner
  </Card>

  <Card title="generate()" icon="sparkles" href="/flutter/llm/generate">
    Non-streaming with metrics
  </Card>
</CardGroup>



# System Prompts
Source: https://docs.runanywhere.ai/flutter/llm/system-prompts

Configure model behavior with system prompts

System prompts set the context and behavior for your AI model. Use them to create specialized assistants, enforce response formats, or constrain the model's persona.

## Basic Usage

```dart theme={null}
final result = await RunAnywhere.generate(
  'Write a function to sort an array',
  options: LLMGenerationOptions(
    maxTokens: 300,
    systemPrompt: 'You are a helpful coding assistant. Write clean, well-commented code.',
  ),
);
```

## Common Patterns

### Coding Assistant

```dart theme={null}
const codingPrompt = '''
You are an expert programmer. Follow these rules:
- Write clean, readable code with comments
- Use best practices and design patterns
- Explain your approach briefly before the code
- Handle edge cases
''';

final result = await RunAnywhere.generate(
  'Implement a binary search in Dart',
  options: LLMGenerationOptions(
    systemPrompt: codingPrompt,
    maxTokens: 400,
  ),
);
```

### Customer Support Bot

```dart theme={null}
const supportPrompt = '''
You are a friendly customer support agent for TechCorp.
- Be helpful and empathetic
- Keep responses concise (2-3 sentences)
- If you don't know something, say so
- Never make up information about products
''';
```

### JSON Output

```dart theme={null}
const jsonPrompt = '''
You are a data extraction assistant.
Always respond with valid JSON only, no additional text.
Extract the requested information into the specified format.
''';

final result = await RunAnywhere.generate(
  'Extract: "John Smith, 25 years old, engineer at Google"',
  options: LLMGenerationOptions(
    systemPrompt: jsonPrompt,
    maxTokens: 100,
    temperature: 0.1,  // Lower temperature for consistent format
  ),
);

// Parse the JSON response
final data = jsonDecode(result.text);
```

### Character/Persona

```dart theme={null}
const personaPrompt = '''
You are Captain Nova, a space explorer from the year 3000.
- Speak with enthusiasm about space and technology
- Reference your adventures across the galaxy
- Use occasional space-themed expressions
- Stay in character at all times
''';
```

## Tips for Effective System Prompts

<AccordionGroup>
  <Accordion title="Be Specific" icon="bullseye">
    Vague prompts lead to inconsistent results. Specify exactly what you want: ❌ "Be helpful" ✅
    "Provide step-by-step instructions. Use bullet points. Keep each step under 20 words."
  </Accordion>

  <Accordion title="Use Examples" icon="lightbulb">
    Show the model what you expect: `Format responses like this example: Q: What is 2+2? A: **4** —
          Two plus two equals four.`
  </Accordion>

  <Accordion title="Set Boundaries" icon="shield-halved">
    Tell the model what NOT to do: `- Do not provide medical advice - Do not generate harmful
          content - If asked about topics outside your expertise, politely decline`
  </Accordion>

  <Accordion title="Keep It Concise" icon="compress">
    Shorter prompts use fewer tokens and leave more room for generation: ❌ Long, rambling
    instructions with repetition ✅ Clear, bullet-pointed rules
  </Accordion>
</AccordionGroup>

## Reusable Prompt Class

Create a helper class for managing prompts:

```dart theme={null}
class SystemPrompts {
  static const String coding = '''
You are an expert programmer. Write clean, well-documented code.
''';

  static const String creative = '''
You are a creative writing assistant. Be imaginative and engaging.
''';

  static String forDomain(String domain) => '''
You are an expert in $domain. Provide accurate, helpful information.
''';
}

// Usage
final result = await RunAnywhere.generate(
  prompt,
  options: LLMGenerationOptions(
    systemPrompt: SystemPrompts.coding,
  ),
);
```

## See Also

<CardGroup>
  <Card title="generate()" icon="sparkles" href="/flutter/llm/generate">
    Full generation API
  </Card>

  <Card title="Best Practices" icon="star" href="/flutter/best-practices">
    Optimization tips
  </Card>
</CardGroup>



# Quick Start
Source: https://docs.runanywhere.ai/flutter/quick-start

Build your first AI feature in 5 minutes

<Tip>
  **Want a complete working app?** Clone our [Flutter Starter
  Example](https://github.com/RunanywhereAI/flutter-starter-example) to get started immediately with
  a full-featured demo app.
</Tip>

## Complete Example

Here's a complete example to get you started with on-device text generation:

```dart theme={null}
import 'package:flutter/material.dart';
import 'package:runanywhere/runanywhere.dart';
import 'package:runanywhere_llamacpp/runanywhere_llamacpp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 1. Initialize SDK
  await RunAnywhere.initialize();

  // 2. Register LlamaCpp backend
  await LlamaCpp.register();

  // 3. Add a model
  LlamaCpp.addModel(
    id: 'smollm2-360m-q8_0',
    name: 'SmolLM2 360M Q8_0',
    url: 'https://huggingface.co/prithivMLmods/SmolLM2-360M-GGUF/resolve/main/SmolLM2-360M.Q8_0.gguf',
    memoryRequirement: 500000000,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String _response = '';
  bool _isLoading = false;
  bool _isModelLoaded = false;

  Future<void> _loadModel() async {
    setState(() => _isLoading = true);

    try {
      // Download model (with progress)
      await for (final progress in RunAnywhere.downloadModel('smollm2-360m-q8_0')) {
        print('Download: ${(progress.percentage * 100).toStringAsFixed(1)}%');
        if (progress.state.isCompleted) break;
      }

      // Load model
      await RunAnywhere.loadModel('smollm2-360m-q8_0');
      setState(() => _isModelLoaded = true);
    } catch (e) {
      setState(() => _response = 'Error: $e');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _generateText() async {
    setState(() => _isLoading = true);

    try {
      final result = await RunAnywhere.generate(
        'Explain quantum computing in simple terms',
        options: LLMGenerationOptions(
          maxTokens: 200,
          temperature: 0.7,
        ),
      );

      setState(() => _response = result.text);
      print('Speed: ${result.tokensPerSecond.toStringAsFixed(1)} tok/s');
    } catch (e) {
      setState(() => _response = 'Error: $e');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RunAnywhere Demo')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            if (!_isModelLoaded)
              ElevatedButton(
                onPressed: _isLoading ? null : _loadModel,
                child: Text(_isLoading ? 'Loading...' : 'Download & Load Model'),
              ),
            if (_isModelLoaded)
              ElevatedButton(
                onPressed: _isLoading ? null : _generateText,
                child: Text(_isLoading ? 'Generating...' : 'Generate'),
              ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(_response),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

## Step-by-Step Breakdown

### 1. Initialize the SDK

```dart theme={null}
await RunAnywhere.initialize();
```

Initialize once at app startup. Development mode requires no API key.

### 2. Register Backend Modules

```dart theme={null}
await LlamaCpp.register();  // For LLM
await Onnx.register();      // For STT/TTS (optional)
```

Register the backends you need. Each backend is a separate package.

### 3. Register Models

```dart theme={null}
LlamaCpp.addModel(
  id: 'smollm2-360m-q8_0',
  name: 'SmolLM2 360M Q8_0',
  url: 'https://huggingface.co/.../SmolLM2-360M.Q8_0.gguf',
  memoryRequirement: 500000000,
);
```

Register models with their download URLs. Models are downloaded on-demand.

### 4. Download & Load Models

```dart theme={null}
// Download with progress tracking
await for (final progress in RunAnywhere.downloadModel('smollm2-360m-q8_0')) {
  print('${(progress.percentage * 100).toStringAsFixed(1)}%');
  if (progress.state.isCompleted) break;
}

// Load into memory
await RunAnywhere.loadModel('smollm2-360m-q8_0');
```

### 5. Generate Text

```dart theme={null}
// Simple chat
final response = await RunAnywhere.chat('Hello!');

// Full generation with metrics
final result = await RunAnywhere.generate(
  'Your prompt here',
  options: LLMGenerationOptions(maxTokens: 200),
);
print('Response: ${result.text}');
print('Speed: ${result.tokensPerSecond} tok/s');
```

## Environment Options

| Environment    | Description                 | API Key Required |
| -------------- | --------------------------- | ---------------- |
| `.development` | Verbose logging, local-only | No               |
| `.staging`     | Testing with real services  | Yes              |
| `.production`  | Minimal logging, telemetry  | Yes              |

```dart theme={null}
// Production initialization
await RunAnywhere.initialize(
  apiKey: 'your-api-key',
  baseURL: 'https://api.runanywhere.ai',
  environment: SDKEnvironment.production,
);
```

## Starter Example Repository

For a complete working application with all features demonstrated, clone our starter example:

```bash theme={null}
git clone https://github.com/RunanywhereAI/flutter-starter-example.git
cd flutter-starter-example
flutter pub get
cd ios && pod install && cd ..
flutter run
```

The [Flutter Starter Example](https://github.com/RunanywhereAI/flutter-starter-example) includes:

* AI Chat with streaming responses
* Speech-to-Text transcription
* Text-to-Speech synthesis
* Voice Assistant pipeline
* Model download and management UI

## Next Steps

<CardGroup>
  <Card title="LLM Chat" icon="comments" href="/flutter/llm/chat">
    Simple text generation
  </Card>

  <Card title="Streaming" icon="bolt" href="/flutter/llm/stream">
    Real-time token streaming
  </Card>

  <Card title="Speech-to-Text" icon="microphone" href="/flutter/stt/transcribe">
    Audio transcription
  </Card>

  <Card title="Text-to-Speech" icon="volume-high" href="/flutter/tts/synthesize">
    Voice synthesis
  </Card>
</CardGroup>



# STT Options
Source: https://docs.runanywhere.ai/flutter/stt/options

Configure speech-to-text behavior

Configure STT behavior for different use cases and languages.

## Model Selection

Choose the right model based on your needs:

| Model              | Size    | Languages | Quality | Speed   | Use Case          |
| ------------------ | ------- | --------- | ------- | ------- | ----------------- |
| `whisper-tiny.en`  | \~75MB  | English   | Good    | Fastest | Quick commands    |
| `whisper-base.en`  | \~150MB | English   | Better  | Fast    | General use       |
| `whisper-small.en` | \~250MB | English   | Best    | Medium  | Accuracy-critical |
| `whisper-tiny`     | \~75MB  | Multi     | Good    | Fast    | Multilingual apps |

## Register Multiple Models

```dart theme={null}
// English-optimized for primary use
Onnx.addModel(
  id: 'whisper-tiny-en',
  name: 'Whisper Tiny English',
  url: 'https://github.com/RunanywhereAI/sherpa-onnx/releases/download/runanywhere-models-v1/sherpa-onnx-whisper-tiny.en.tar.gz',
  modality: ModelCategory.speechRecognition,
);

// Multilingual for international users
Onnx.addModel(
  id: 'whisper-tiny-multi',
  name: 'Whisper Tiny Multilingual',
  url: 'https://github.com/RunanywhereAI/sherpa-onnx/releases/download/runanywhere-models-v1/sherpa-onnx-whisper-tiny.tar.gz',
  modality: ModelCategory.speechRecognition,
);
```

## Switch Models at Runtime

```dart theme={null}
// Load English model by default
await RunAnywhere.loadSTTModel('whisper-tiny-en');

// Switch to multilingual when needed
Future<void> switchToMultilingual() async {
  await RunAnywhere.unloadSTTModel();
  await RunAnywhere.loadSTTModel('whisper-tiny-multi');
}
```

## Memory Management

Unload STT model when not needed to free memory:

```dart theme={null}
// Check if loaded
if (RunAnywhere.isSTTModelLoaded) {
  print('Current STT model: ${RunAnywhere.currentSTTModelId}');
}

// Unload to free memory
await RunAnywhere.unloadSTTModel();
```

## Audio Preprocessing Tips

<AccordionGroup>
  <Accordion title="Sample Rate Conversion" icon="wave-square">
    If your audio isn't 16kHz, convert it before transcription: `dart // Example: Convert 44.1kHz
            to 16kHz // Use a package like 'flutter_sound' for resampling `
  </Accordion>

  <Accordion title="Noise Reduction" icon="volume-xmark">
    For noisy environments, consider preprocessing audio: - Apply a high-pass filter to remove
    low-frequency noise - Normalize audio levels - Remove silence at beginning/end
  </Accordion>

  <Accordion title="Audio Format" icon="file-audio">
    Always ensure correct format: - PCM16 (16-bit signed integer) - 16,000 Hz sample rate - Mono
    (single channel)
  </Accordion>
</AccordionGroup>

## Error Handling

```dart theme={null}
try {
  final text = await RunAnywhere.transcribe(audioBytes);
  print('Transcribed: $text');
} on SDKError catch (e) {
  switch (e.type) {
    case SDKErrorType.sttNotAvailable:
      print('STT not available. Load an STT model first.');
      break;
    case SDKErrorType.componentNotReady:
      print('STT model not loaded.');
      break;
    default:
      print('STT error: ${e.message}');
  }
}
```

## Best Practices

<Tip>
  **Start with the smallest model** that meets your accuracy needs. You can always upgrade later if
  needed.
</Tip>

1. **Preload during idle time** — Download and load STT model before user needs it
2. **Use English-specific models** — They're smaller and more accurate for English
3. **Handle empty audio** — Check audio length before transcribing
4. **Provide feedback** — Show transcription progress to users

## See Also

<CardGroup>
  <Card title="transcribe()" icon="microphone" href="/flutter/stt/transcribe">
    Basic transcription
  </Card>

  <Card title="Voice Agent" icon="robot" href="/flutter/voice-agent">
    Complete voice pipeline
  </Card>
</CardGroup>



# Streaming STT
Source: https://docs.runanywhere.ai/flutter/stt/stream

Real-time speech transcription as you speak

Stream audio for real-time transcription as the user speaks. Ideal for voice assistants and live captioning.

## Overview

Streaming STT processes audio in chunks, providing partial transcriptions that update as more audio arrives. This creates a responsive experience where users see their words appear in real-time.

## Basic Usage

```dart theme={null}
// Ensure STT model is loaded
await RunAnywhere.loadSTTModel('sherpa-onnx-whisper-tiny.en');

// Stream transcription results from audio chunks
await for (final result in RunAnywhere.transcribeStream(audioStream)) {
  print('Partial: ${result.text}');  // result.isFinal is true on last segment
}
```

## With Voice Session

The easiest way to use streaming STT is through the Voice Agent, which handles VAD and audio capture automatically:

```dart theme={null}
final session = await RunAnywhere.startVoiceSession();

session.events.listen((event) {
  if (event is VoiceSessionTranscribed) {
    print('Transcription: ${event.text}');
  }
});
```

See [Voice Agent](/flutter/voice-agent) for the complete voice pipeline.

## Real-Time Transcription Widget

```dart theme={null}
class LiveTranscriptionWidget extends StatefulWidget {
  @override
  _LiveTranscriptionWidgetState createState() => _LiveTranscriptionWidgetState();
}

class _LiveTranscriptionWidgetState extends State<LiveTranscriptionWidget> {
  final _recorder = AudioRecorder();
  String _partialText = '';
  String _finalText = '';
  bool _isListening = false;
  StreamSubscription? _audioSubscription;

  Future<void> _startListening() async {
    if (!await _recorder.hasPermission()) return;

    setState(() {
      _isListening = true;
      _partialText = '';
    });

    // Start recording with streaming
    final stream = await _recorder.startStream(
      const RecordConfig(
        encoder: AudioEncoder.pcm16bits,
        sampleRate: 16000,
        numChannels: 1,
      ),
    );

    // Process audio chunks
    _audioSubscription = stream.listen((chunk) async {
      // This would use your streaming transcription implementation
      // The exact API depends on how you've set up streaming
    });
  }

  Future<void> _stopListening() async {
    await _audioSubscription?.cancel();
    await _recorder.stop();

    setState(() {
      _isListening = false;
      _finalText = _partialText;
      _partialText = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Show partial transcription with typing indicator
        Container(
          padding: EdgeInsets.all(16),
          child: Text(
            _isListening ? '$_partialText|' : _finalText,
            style: TextStyle(
              fontSize: 18,
              color: _isListening ? Colors.grey : Colors.black,
            ),
          ),
        ),

        // Recording button
        IconButton(
          icon: Icon(_isListening ? Icons.stop : Icons.mic),
          iconSize: 48,
          color: _isListening ? Colors.red : Colors.blue,
          onPressed: _isListening ? _stopListening : _startListening,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _audioSubscription?.cancel();
    _recorder.dispose();
    super.dispose();
  }
}
```

## Tips for Streaming STT

<AccordionGroup>
  <Accordion title="Buffer Management" icon="database">
    Accumulate audio in buffers of 100-500ms for optimal accuracy vs latency tradeoff.
  </Accordion>

  <Accordion title="Silence Detection" icon="waveform">
    Use VAD (Voice Activity Detection) to detect end of speech and finalize transcriptions.
  </Accordion>

  <Accordion title="Error Recovery" icon="arrow-rotate-right">
    Handle network interruptions and audio glitches gracefully. Consider retrying failed chunks.
  </Accordion>

  <Accordion title="UI Feedback" icon="eye">
    Show a visual indicator (waveform, pulsing dot) to confirm audio is being captured.
  </Accordion>
</AccordionGroup>

## See Also

<CardGroup>
  <Card title="transcribe()" icon="microphone" href="/flutter/stt/transcribe">
    Batch transcription
  </Card>

  <Card title="Voice Agent" icon="robot" href="/flutter/voice-agent">
    Complete voice pipeline
  </Card>
</CardGroup>



# transcribe()
Source: https://docs.runanywhere.ai/flutter/stt/transcribe

Convert audio to text with Whisper models

Transcribe audio data to text using on-device Whisper models via ONNX Runtime.

## Basic Usage

```dart theme={null}
// Load STT model first
await RunAnywhere.loadSTTModel('sherpa-onnx-whisper-tiny.en');

// Transcribe audio data (PCM16 at 16kHz mono)
final text = await RunAnywhere.transcribe(audioBytes);
print('Transcription: $text');
```

## With Detailed Result

Get confidence scores and metadata with `transcribeWithResult()`:

```dart theme={null}
final result = await RunAnywhere.transcribeWithResult(audioBytes);

print('Text: ${result.text}');
print('Confidence: ${(result.confidence * 100).toStringAsFixed(1)}%');
print('Duration: ${result.durationMs}ms');
if (result.language != null) {
  print('Language: ${result.language}');
}
```

## STTResult

| Property     | Type      | Description                    |
| ------------ | --------- | ------------------------------ |
| `text`       | `String`  | Transcribed text               |
| `confidence` | `double`  | Confidence score (0.0 to 1.0)  |
| `durationMs` | `int`     | Audio duration in milliseconds |
| `language`   | `String?` | Detected language code         |

## Setup

### 1. Register ONNX Backend

```dart theme={null}
import 'package:runanywhere_onnx/runanywhere_onnx.dart';

await Onnx.register();
```

### 2. Add STT Model

```dart theme={null}
Onnx.addModel(
  id: 'sherpa-onnx-whisper-tiny.en',
  name: 'Whisper Tiny English',
  url: 'https://github.com/RunanywhereAI/sherpa-onnx/releases/download/runanywhere-models-v1/sherpa-onnx-whisper-tiny.en.tar.gz',
  modality: ModelCategory.speechRecognition,
);
```

### 3. Download & Load

```dart theme={null}
// Download
await for (final progress in RunAnywhere.downloadModel('sherpa-onnx-whisper-tiny.en')) {
  print('${(progress.percentage * 100).toStringAsFixed(1)}%');
  if (progress.state.isCompleted) break;
}

// Load
await RunAnywhere.loadSTTModel('sherpa-onnx-whisper-tiny.en');
```

## Audio Format Requirements

<Warning>Audio must be in the correct format for accurate transcription.</Warning>

| Property    | Required Value    |
| ----------- | ----------------- |
| Format      | PCM (raw audio)   |
| Sample Rate | 16,000 Hz (16kHz) |
| Channels    | 1 (mono)          |
| Bit Depth   | 16-bit            |

## Recording Audio

Use a package like `record` to capture audio:

```dart theme={null}
import 'package:record/record.dart';

final recorder = AudioRecorder();

// Start recording with correct format
await recorder.start(
  const RecordConfig(
    encoder: AudioEncoder.pcm16bits,
    sampleRate: 16000,
    numChannels: 1,
  ),
  path: tempFilePath,
);

// Stop and get audio
await recorder.stop();
final audioBytes = await File(tempFilePath).readAsBytes();

// Transcribe
final text = await RunAnywhere.transcribe(audioBytes);
```

## Available Models

| Model ID                       | Size    | Languages    | Speed  |
| ------------------------------ | ------- | ------------ | ------ |
| `sherpa-onnx-whisper-tiny.en`  | \~75MB  | English      | Fast   |
| `sherpa-onnx-whisper-base.en`  | \~150MB | English      | Medium |
| `sherpa-onnx-whisper-small.en` | \~250MB | English      | Slower |
| `sherpa-onnx-whisper-tiny`     | \~75MB  | Multilingual | Fast   |

## Complete Example

```dart theme={null}
class TranscriptionDemo extends StatefulWidget {
  @override
  _TranscriptionDemoState createState() => _TranscriptionDemoState();
}

class _TranscriptionDemoState extends State<TranscriptionDemo> {
  final _recorder = AudioRecorder();
  String _transcription = '';
  bool _isRecording = false;
  bool _isTranscribing = false;

  Future<void> _toggleRecording() async {
    if (_isRecording) {
      // Stop and transcribe
      final path = await _recorder.stop();
      if (path != null) {
        setState(() {
          _isRecording = false;
          _isTranscribing = true;
        });

        final audioBytes = await File(path).readAsBytes();
        final text = await RunAnywhere.transcribe(audioBytes);

        setState(() {
          _transcription = text;
          _isTranscribing = false;
        });
      }
    } else {
      // Start recording
      if (await _recorder.hasPermission()) {
        final tempDir = await getTemporaryDirectory();
        final path = '${tempDir.path}/recording.pcm';

        await _recorder.start(
          const RecordConfig(
            encoder: AudioEncoder.pcm16bits,
            sampleRate: 16000,
            numChannels: 1,
          ),
          path: path,
        );

        setState(() => _isRecording = true);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_transcription),
        ElevatedButton(
          onPressed: _isTranscribing ? null : _toggleRecording,
          child: Text(_isRecording ? 'Stop' : 'Record'),
        ),
        if (_isTranscribing) CircularProgressIndicator(),
      ],
    );
  }
}
```

## See Also

<CardGroup>
  <Card title="Streaming STT" icon="microphone-lines" href="/flutter/stt/stream">
    Real-time transcription
  </Card>

  <Card title="STT Options" icon="sliders" href="/flutter/stt/options">
    Configuration options
  </Card>
</CardGroup>



# Tool Calling
Source: https://docs.runanywhere.ai/flutter/tool-calling

Register tools and let on-device LLMs call functions with structured arguments

Enable on-device LLMs to invoke your Dart functions by registering typed tool definitions. The SDK handles argument parsing, execution, and result formatting automatically.

<Warning>
  Tool calling uses the `RunAnywhereTools` class, **not** `RunAnywhere`. All tool registration and
  generation methods live on `RunAnywhereTools`.
</Warning>

## Basic Usage

```dart theme={null}
import 'package:runanywhere/runanywhere.dart';

// 1. Clear any previously registered tools
RunAnywhereTools.clearTools();

// 2. Register a tool
RunAnywhereTools.registerTool(
  const ToolDefinition(
    name: 'get_weather',
    description: 'Gets the current weather for a location',
    parameters: [
      ToolParameter(
        name: 'location',
        type: ToolParameterType.string,
        description: 'City name, e.g. "San Francisco"',
      ),
    ],
    category: 'Utility',
  ),
  _fetchWeather,
);

// 3. Generate with tools
final result = await RunAnywhereTools.generateWithTools(
  'What is the weather in San Francisco?',
  options: const ToolCallingOptions(
    maxToolCalls: 3,
    autoExecute: true,
    temperature: 0.7,
    maxTokens: 512,
  ),
);

print(result.text);        // "The weather in San Francisco is 72°F and sunny."
print(result.toolCalls);   // [ToolCall(toolName: 'get_weather', ...)]
print(result.toolResults); // [ToolResult(success: true, ...)]
```

## Setup

### 1. Import the SDK

```dart theme={null}
import 'package:runanywhere/runanywhere.dart';
```

### 2. Define Tool Executors

Every tool executor must match the signature `Future<Map<String, ToolValue>> Function(Map<String, ToolValue>)`:

```dart theme={null}
Future<Map<String, ToolValue>> _fetchWeather(
  Map<String, ToolValue> args,
) async {
  final location = args['location']?.stringValue ?? 'Unknown';

  // Call your weather service, local DB, or any async Dart code
  return {
    'temperature': NumberToolValue(72.0),
    'condition': StringToolValue('sunny'),
    'location': StringToolValue(location),
  };
}
```

### 3. Register Tools

```dart theme={null}
RunAnywhereTools.clearTools();

RunAnywhereTools.registerTool(
  const ToolDefinition(
    name: 'get_weather',
    description: 'Gets the current weather for a location',
    parameters: [
      ToolParameter(
        name: 'location',
        type: ToolParameterType.string,
        description: 'City name, e.g. "San Francisco"',
      ),
    ],
    category: 'Utility',
  ),
  _fetchWeather,
);
```

<Tip>
  Always call `RunAnywhereTools.clearTools()` before registering tools to avoid duplicates when
  hot-reloading during development.
</Tip>

## API Reference

### RunAnywhereTools

| Method                                 | Return Type                 | Description                                                          |
| -------------------------------------- | --------------------------- | -------------------------------------------------------------------- |
| `registerTool(definition, executor)`   | `void`                      | Register a tool with its definition and executor function            |
| `clearTools()`                         | `void`                      | Remove all registered tools                                          |
| `generateWithTools(prompt, {options})` | `Future<ToolCallingResult>` | Run the full orchestration loop: generate → parse → execute → repeat |

### ToolDefinition

| Property      | Type                  | Required | Description                                                             |
| ------------- | --------------------- | -------- | ----------------------------------------------------------------------- |
| `name`        | `String`              | Yes      | Unique identifier for the tool                                          |
| `description` | `String`              | Yes      | Human-readable description the LLM uses to decide when to call the tool |
| `parameters`  | `List<ToolParameter>` | Yes      | Typed parameter definitions                                             |
| `category`    | `String`              | No       | Logical grouping (e.g. `'Utility'`, `'Data'`)                           |

### ToolParameter

| Property      | Type                | Required | Description                                             |
| ------------- | ------------------- | -------- | ------------------------------------------------------- |
| `name`        | `String`            | Yes      | Parameter name                                          |
| `type`        | `ToolParameterType` | Yes      | One of `string`, `number`, `boolean`, `object`, `array` |
| `description` | `String`            | Yes      | What this parameter represents                          |

### ToolCallingOptions

| Property       | Type     | Default | Description                                                       |
| -------------- | -------- | ------- | ----------------------------------------------------------------- |
| `maxToolCalls` | `int`    | `5`     | Maximum tool invocations per generation                           |
| `autoExecute`  | `bool`   | `true`  | Automatically execute tool calls and feed results back to the LLM |
| `temperature`  | `double` | `0.8`   | Sampling temperature (0.0–2.0)                                    |
| `maxTokens`    | `int`    | `256`   | Maximum tokens in the final response                              |

### ToolCallingResult

| Property      | Type               | Description                                                                                                   |
| ------------- | ------------------ | ------------------------------------------------------------------------------------------------------------- |
| `text`        | `String`           | Final text response after all tool calls complete                                                             |
| `toolCalls`   | `List<ToolCall>`   | Every tool call the LLM requested; each has `toolName` (`String`) and `arguments` (`Map<String, ToolValue>`)  |
| `toolResults` | `List<ToolResult>` | Execution results; each has `result` (`Map<String, ToolValue>?`), `error` (`String?`), and `success` (`bool`) |

### ToolValue Types

`ToolValue` is a Dart 3 **sealed class**. Create instances with the concrete subtypes and read values with the `stringValue` getter or pattern matching.

| Subtype           | Constructor                | Description            |
| ----------------- | -------------------------- | ---------------------- |
| `StringToolValue` | `StringToolValue('hello')` | String value           |
| `NumberToolValue` | `NumberToolValue(42.0)`    | Numeric value (double) |
| `BoolToolValue`   | `BoolToolValue(true)`      | Boolean value          |
| `NullToolValue`   | `NullToolValue()`          | Explicit null          |
| `ArrayToolValue`  | `ArrayToolValue()`         | Array / list value     |
| `ObjectToolValue` | `ObjectToolValue()`        | Nested object value    |

Access any value as a string via the `.stringValue` getter:

```dart theme={null}
final temp = args['temperature'];
print(temp?.stringValue); // "72.0"
```

#### Pattern Matching (Dart 3)

Use exhaustive `switch` expressions on the sealed class:

```dart theme={null}
String formatToolValue(ToolValue value) {
  return switch (value) {
    StringToolValue sv => sv.stringValue,
    NumberToolValue nv => nv.value.toString(),
    BoolToolValue bv   => bv.value.toString(),
    NullToolValue()    => 'null',
    ArrayToolValue()   => '[array]',
    ObjectToolValue()  => '{object}',
  };
}
```

## Examples

### Weather Tool

```dart theme={null}
Future<Map<String, ToolValue>> _fetchWeather(
  Map<String, ToolValue> args,
) async {
  final location = args['location']?.stringValue ?? 'Unknown';
  // Simulate API call
  return {
    'temperature': NumberToolValue(72.0),
    'condition': StringToolValue('sunny'),
    'location': StringToolValue(location),
  };
}

RunAnywhereTools.registerTool(
  const ToolDefinition(
    name: 'get_weather',
    description: 'Gets the current weather for a location',
    parameters: [
      ToolParameter(
        name: 'location',
        type: ToolParameterType.string,
        description: 'City name',
      ),
    ],
    category: 'Utility',
  ),
  _fetchWeather,
);
```

### Calculator Tool

```dart theme={null}
Future<Map<String, ToolValue>> _calculate(
  Map<String, ToolValue> args,
) async {
  final a = (args['a'] as NumberToolValue?)?.value ?? 0;
  final b = (args['b'] as NumberToolValue?)?.value ?? 0;
  final op = args['operation']?.stringValue ?? 'add';

  final result = switch (op) {
    'add'      => a + b,
    'subtract' => a - b,
    'multiply' => a * b,
    'divide'   => b != 0 ? a / b : double.nan,
    _          => double.nan,
  };

  return {'result': NumberToolValue(result)};
}

RunAnywhereTools.registerTool(
  const ToolDefinition(
    name: 'calculate',
    description: 'Performs basic arithmetic on two numbers',
    parameters: [
      ToolParameter(
        name: 'a',
        type: ToolParameterType.number,
        description: 'First operand',
      ),
      ToolParameter(
        name: 'b',
        type: ToolParameterType.number,
        description: 'Second operand',
      ),
      ToolParameter(
        name: 'operation',
        type: ToolParameterType.string,
        description: 'One of: add, subtract, multiply, divide',
      ),
    ],
    category: 'Math',
  ),
  _calculate,
);
```

### Current Time Tool

```dart theme={null}
Future<Map<String, ToolValue>> _getTime(
  Map<String, ToolValue> args,
) async {
  final timezone = args['timezone']?.stringValue ?? 'UTC';
  final now = DateTime.now().toUtc();

  return {
    'time': StringToolValue(now.toIso8601String()),
    'timezone': StringToolValue(timezone),
  };
}

RunAnywhereTools.registerTool(
  const ToolDefinition(
    name: 'get_current_time',
    description: 'Returns the current date and time',
    parameters: [
      ToolParameter(
        name: 'timezone',
        type: ToolParameterType.string,
        description: 'IANA timezone, e.g. "America/New_York"',
      ),
    ],
    category: 'Utility',
  ),
  _getTime,
);
```

### Complete Flutter Widget

A full-screen widget that registers weather, calculator, and time tools, then runs a multi-tool conversation:

```dart theme={null}
import 'package:flutter/material.dart';
import 'package:runanywhere/runanywhere.dart';

class ToolCallingScreen extends StatefulWidget {
  const ToolCallingScreen({super.key});

  @override
  State<ToolCallingScreen> createState() => _ToolCallingScreenState();
}

class _ToolCallingScreenState extends State<ToolCallingScreen> {
  String _response = '';
  List<String> _toolLog = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _registerTools();
  }

  void _registerTools() {
    RunAnywhereTools.clearTools();

    RunAnywhereTools.registerTool(
      const ToolDefinition(
        name: 'get_weather',
        description: 'Gets the current weather for a location',
        parameters: [
          ToolParameter(
            name: 'location',
            type: ToolParameterType.string,
            description: 'City name, e.g. "San Francisco"',
          ),
        ],
        category: 'Utility',
      ),
      _fetchWeather,
    );

    RunAnywhereTools.registerTool(
      const ToolDefinition(
        name: 'calculate',
        description: 'Performs basic arithmetic on two numbers',
        parameters: [
          ToolParameter(
            name: 'a',
            type: ToolParameterType.number,
            description: 'First operand',
          ),
          ToolParameter(
            name: 'b',
            type: ToolParameterType.number,
            description: 'Second operand',
          ),
          ToolParameter(
            name: 'operation',
            type: ToolParameterType.string,
            description: 'One of: add, subtract, multiply, divide',
          ),
        ],
        category: 'Math',
      ),
      _calculate,
    );

    RunAnywhereTools.registerTool(
      const ToolDefinition(
        name: 'get_current_time',
        description: 'Returns the current date and time',
        parameters: [
          ToolParameter(
            name: 'timezone',
            type: ToolParameterType.string,
            description: 'IANA timezone, e.g. "America/New_York"',
          ),
        ],
        category: 'Utility',
      ),
      _getTime,
    );
  }

  Future<Map<String, ToolValue>> _fetchWeather(
    Map<String, ToolValue> args,
  ) async {
    final location = args['location']?.stringValue ?? 'Unknown';
    return {
      'temperature': NumberToolValue(72.0),
      'condition': StringToolValue('sunny'),
      'location': StringToolValue(location),
    };
  }

  Future<Map<String, ToolValue>> _calculate(
    Map<String, ToolValue> args,
  ) async {
    final a = (args['a'] as NumberToolValue?)?.value ?? 0;
    final b = (args['b'] as NumberToolValue?)?.value ?? 0;
    final op = args['operation']?.stringValue ?? 'add';

    final result = switch (op) {
      'add'      => a + b,
      'subtract' => a - b,
      'multiply' => a * b,
      'divide'   => b != 0 ? a / b : double.nan,
      _          => double.nan,
    };

    return {'result': NumberToolValue(result)};
  }

  Future<Map<String, ToolValue>> _getTime(
    Map<String, ToolValue> args,
  ) async {
    final timezone = args['timezone']?.stringValue ?? 'UTC';
    final now = DateTime.now().toUtc();
    return {
      'time': StringToolValue(now.toIso8601String()),
      'timezone': StringToolValue(timezone),
    };
  }

  Future<void> _runPrompt(String prompt) async {
    setState(() {
      _isLoading = true;
      _response = '';
      _toolLog = [];
    });

    try {
      final result = await RunAnywhereTools.generateWithTools(
        prompt,
        options: const ToolCallingOptions(
          maxToolCalls: 3,
          autoExecute: true,
          temperature: 0.7,
          maxTokens: 512,
        ),
      );

      setState(() {
        _response = result.text;
        _toolLog = [
          for (final call in result.toolCalls)
            '→ ${call.toolName}(${call.arguments.map(
              (k, v) => MapEntry(k, v.stringValue),
            )})',
          for (final res in result.toolResults)
            res.success
                ? '✓ ${res.result}'
                : '✗ ${res.error}',
        ];
      });
    } catch (e) {
      setState(() => _response = 'Error: $e');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tool Calling Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton(
                  onPressed: _isLoading
                      ? null
                      : () => _runPrompt(
                            'What is the weather in San Francisco?',
                          ),
                  child: const Text('Weather'),
                ),
                ElevatedButton(
                  onPressed: _isLoading
                      ? null
                      : () => _runPrompt('What is 42 * 17?'),
                  child: const Text('Calculate'),
                ),
                ElevatedButton(
                  onPressed: _isLoading
                      ? null
                      : () => _runPrompt('What time is it in UTC?'),
                  child: const Text('Time'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (_isLoading) const LinearProgressIndicator(),
            const SizedBox(height: 16),
            if (_toolLog.isNotEmpty) ...[
              Text(
                'Tool Activity',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 4),
              for (final log in _toolLog)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Text(log, style: const TextStyle(fontFamily: 'monospace', fontSize: 13)),
                ),
              const Divider(height: 24),
            ],
            if (_response.isNotEmpty)
              Expanded(
                child: SingleChildScrollView(
                  child: Text(_response, style: const TextStyle(fontSize: 16)),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
```

## Error Handling

Wrap `generateWithTools` in a try-catch and inspect individual `ToolResult` entries for per-tool errors:

```dart theme={null}
try {
  final result = await RunAnywhereTools.generateWithTools(
    prompt,
    options: const ToolCallingOptions(maxToolCalls: 3, autoExecute: true),
  );

  for (final res in result.toolResults) {
    if (!res.success) {
      debugPrint('Tool failed: ${res.error}');
    }
  }
} on RunAnywhereException catch (e) {
  debugPrint('SDK error: ${e.message}');
} catch (e) {
  debugPrint('Unexpected error: $e');
}
```

<Note>
  If a tool executor throws, the SDK catches the exception and records it in the corresponding
  `ToolResult.error` field. The LLM receives the error message and can retry or respond gracefully.
</Note>

### Common Errors

| Error                  | Cause                                     | Fix                                                 |
| ---------------------- | ----------------------------------------- | --------------------------------------------------- |
| `ToolNotFound`         | LLM requested an unregistered tool        | Verify tool names match exactly                     |
| `MaxToolCallsExceeded` | Hit the `maxToolCalls` limit              | Increase the limit or simplify the prompt           |
| `ModelNotLoaded`       | No LLM model loaded                       | Call `RunAnywhere.loadModel(...)` before generating |
| `InvalidArguments`     | Argument types don't match the definition | Check `ToolParameterType` in your `ToolDefinition`  |

## See Also

<CardGroup>
  <Card title="LLM Generation" icon="brain" href="/flutter/llm/generate">
    Text generation with metrics
  </Card>

  <Card title="Streaming" icon="bolt" href="/flutter/llm/stream">
    Stream tokens in real-time
  </Card>

  <Card title="System Prompts" icon="robot" href="/flutter/llm/system-prompts">
    Control LLM behavior with system prompts
  </Card>

  <Card title="Error Handling" icon="triangle-exclamation" href="/flutter/error-handling">
    SDK-wide error handling patterns
  </Card>
</CardGroup>



# Streaming TTS
Source: https://docs.runanywhere.ai/flutter/tts/stream

Stream audio for lower perceived latency

Stream TTS audio as it's generated for faster time-to-first-audio, especially with longer text.

## Overview

Streaming TTS starts playing audio before the entire synthesis is complete. This is particularly useful for:

* Long text passages
* Voice assistants responding in real-time
* Reducing perceived latency

## Basic Concept

```dart theme={null}
// The Voice Agent pipeline handles streaming TTS automatically
final session = await RunAnywhere.startVoiceSession(
  config: VoiceSessionConfig(
    autoPlayTTS: true,  // Automatically plays synthesized audio
  ),
);

session.events.listen((event) {
  if (event is VoiceSessionSpeaking) {
    print('Playing audio response...');
  }
});
```

## Chunked Synthesis

For manual control, synthesize text in chunks:

```dart theme={null}
Future<void> speakInChunks(String longText) async {
  // Split into sentences
  final sentences = longText.split(RegExp(r'(?<=[.!?])\s+'));

  for (final sentence in sentences) {
    final result = await RunAnywhere.synthesize(sentence);
    await playAudio(result);
  }
}
```

## With Voice Agent Pipeline

The Voice Agent provides the best streaming TTS experience:

```dart theme={null}
// Initialize all components
await RunAnywhere.loadSTTModel('sherpa-onnx-whisper-tiny.en');
await RunAnywhere.loadModel('smollm2-360m-q8_0');
await RunAnywhere.loadTTSVoice('vits-piper-en_US-lessac-medium');

// Start session with auto-play
final session = await RunAnywhere.startVoiceSession(
  config: VoiceSessionConfig(
    autoPlayTTS: true,
    continuousMode: true,
  ),
);

// The pipeline automatically:
// 1. Detects speech (VAD)
// 2. Transcribes audio (STT)
// 3. Generates response (LLM)
// 4. Synthesizes and plays audio (TTS)
session.events.listen((event) {
  switch (event) {
    case VoiceSessionTranscribed(:final text):
      print('User: $text');
    case VoiceSessionResponded(:final text):
      print('AI: $text');
    case VoiceSessionSpeaking():
      print('Playing response...');
    case VoiceSessionTurnCompleted():
      print('Ready for next turn');
    default:
      break;
  }
});
```

## Latency Optimization Tips

<AccordionGroup>
  <Accordion title="Preload Voice Model" icon="download">
    Load the TTS voice during app startup or idle time, not when the user first needs it.

    ```dart theme={null}
    // In app initialization
    await RunAnywhere.loadTTSVoice('vits-piper-en_US-lessac-medium');
    ```
  </Accordion>

  <Accordion title="Use Faster Voices" icon="bolt">
    Smaller voice models synthesize faster. Choose based on your quality/speed tradeoff.
  </Accordion>

  <Accordion title="Sentence-Level Streaming" icon="bars-staggered">
    For very long responses, synthesize and play sentence by sentence rather than waiting for the
    complete response.
  </Accordion>

  <Accordion title="Buffer Management" icon="database">
    Start playback as soon as you have enough audio buffered (typically 100-200ms).
  </Accordion>
</AccordionGroup>

## See Also

<CardGroup>
  <Card title="synthesize()" icon="volume-high" href="/flutter/tts/synthesize">
    Basic synthesis
  </Card>

  <Card title="Voice Agent" icon="robot" href="/flutter/voice-agent">
    Complete voice pipeline
  </Card>
</CardGroup>



# synthesize()
Source: https://docs.runanywhere.ai/flutter/tts/synthesize

Convert text to speech with neural voices

Synthesize natural-sounding speech from text using on-device Piper TTS models.

## Basic Usage

```dart theme={null}
// Load a TTS voice
await RunAnywhere.loadTTSVoice('vits-piper-en_US-lessac-medium');

// Synthesize speech
final result = await RunAnywhere.synthesize(
  'Hello! Welcome to RunAnywhere.',
  rate: 1.0,
  pitch: 1.0,
);

// result.samples contains PCM Float32 audio
// result.sampleRate is typically 22050 Hz
print('Duration: ${result.durationSeconds}s');
```

## TTSResult

| Property          | Type          | Description                         |
| ----------------- | ------------- | ----------------------------------- |
| `samples`         | `Float32List` | Audio samples (PCM float)           |
| `sampleRate`      | `int`         | Sample rate in Hz (typically 22050) |
| `durationMs`      | `int`         | Duration in milliseconds            |
| `durationSeconds` | `double`      | Duration in seconds                 |
| `numSamples`      | `int`         | Number of audio samples             |

## Parameters

| Parameter | Type     | Default | Description              |
| --------- | -------- | ------- | ------------------------ |
| `rate`    | `double` | 1.0     | Speech rate (0.5 to 2.0) |
| `pitch`   | `double` | 1.0     | Voice pitch (0.5 to 2.0) |
| `volume`  | `double` | 1.0     | Volume (0.0 to 1.0)      |

```dart theme={null}
// Slower, lower pitch for emphasis
final result = await RunAnywhere.synthesize(
  'Important announcement!',
  rate: 0.8,
  pitch: 0.9,
  volume: 1.0,
);
```

## Setup

### 1. Register ONNX Backend

```dart theme={null}
import 'package:runanywhere_onnx/runanywhere_onnx.dart';

await Onnx.register();
```

### 2. Add TTS Voice

```dart theme={null}
Onnx.addModel(
  id: 'vits-piper-en_US-lessac-medium',
  name: 'Piper US English (Lessac)',
  url: 'https://github.com/RunanywhereAI/sherpa-onnx/releases/download/runanywhere-models-v1/vits-piper-en_US-lessac-medium.tar.gz',
  modality: ModelCategory.speechSynthesis,
);
```

### 3. Download & Load

```dart theme={null}
// Download
await for (final progress in RunAnywhere.downloadModel('vits-piper-en_US-lessac-medium')) {
  print('${(progress.percentage * 100).toStringAsFixed(1)}%');
  if (progress.state.isCompleted) break;
}

// Load
await RunAnywhere.loadTTSVoice('vits-piper-en_US-lessac-medium');
```

## Playing Audio

Use a package like `audioplayers` to play the synthesized audio:

```dart theme={null}
import 'package:audioplayers/audioplayers.dart';

final player = AudioPlayer();

Future<void> speakText(String text) async {
  final result = await RunAnywhere.synthesize(text);

  // Convert Float32 samples to bytes for playback
  final bytes = _convertToBytes(result.samples, result.sampleRate);

  // Play using audioplayers
  await player.play(BytesSource(bytes));
}

Uint8List _convertToBytes(Float32List samples, int sampleRate) {
  // Convert Float32 PCM to Int16 PCM
  final int16Samples = Int16List(samples.length);
  for (var i = 0; i < samples.length; i++) {
    int16Samples[i] = (samples[i] * 32767).clamp(-32768, 32767).toInt();
  }

  // Build WAV file: 44-byte header + PCM data
  final dataSize = int16Samples.length * 2;
  final header = ByteData(44);
  // RIFF header
  header.setUint32(0, 0x52494646, Endian.big);   // "RIFF"
  header.setUint32(4, 36 + dataSize, Endian.little);
  header.setUint32(8, 0x57415645, Endian.big);   // "WAVE"
  // fmt chunk
  header.setUint32(12, 0x666d7420, Endian.big);  // "fmt "
  header.setUint32(16, 16, Endian.little);        // chunk size
  header.setUint16(20, 1, Endian.little);         // PCM format
  header.setUint16(22, 1, Endian.little);         // mono
  header.setUint32(24, sampleRate, Endian.little);
  header.setUint32(28, sampleRate * 2, Endian.little); // byte rate
  header.setUint16(32, 2, Endian.little);         // block align
  header.setUint16(34, 16, Endian.little);        // bits per sample
  // data chunk
  header.setUint32(36, 0x64617461, Endian.big);  // "data"
  header.setUint32(40, dataSize, Endian.little);

  final wavBytes = Uint8List(44 + dataSize);
  wavBytes.setAll(0, header.buffer.asUint8List());
  wavBytes.setAll(44, int16Samples.buffer.asUint8List());
  return wavBytes;
}
```

## Complete Example

```dart theme={null}
class TextToSpeechDemo extends StatefulWidget {
  @override
  _TextToSpeechDemoState createState() => _TextToSpeechDemoState();
}

class _TextToSpeechDemoState extends State<TextToSpeechDemo> {
  final _controller = TextEditingController();
  final _player = AudioPlayer();
  bool _isSpeaking = false;
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    _initTTS();
  }

  Future<void> _initTTS() async {
    // Download if needed
    final models = await RunAnywhere.availableModels();
    final ttsModel = models.firstWhere(
      (m) => m.id == 'vits-piper-en_US-lessac-medium',
    );

    if (!ttsModel.isDownloaded) {
      await for (final p in RunAnywhere.downloadModel(ttsModel.id)) {
        if (p.state.isCompleted) break;
      }
    }

    // Load voice
    await RunAnywhere.loadTTSVoice('vits-piper-en_US-lessac-medium');
    setState(() => _isLoaded = true);
  }

  Future<void> _speak() async {
    if (_controller.text.isEmpty) return;

    setState(() => _isSpeaking = true);

    try {
      final result = await RunAnywhere.synthesize(_controller.text);
      // Play audio (implementation depends on your audio setup)
      await _playAudio(result);
    } finally {
      setState(() => _isSpeaking = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: 'Enter text to speak...',
          ),
          maxLines: 3,
        ),
        SizedBox(height: 16),
        ElevatedButton.icon(
          onPressed: _isLoaded && !_isSpeaking ? _speak : null,
          icon: Icon(_isSpeaking ? Icons.stop : Icons.volume_up),
          label: Text(_isSpeaking ? 'Speaking...' : 'Speak'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _player.dispose();
    super.dispose();
  }
}
```

## See Also

<CardGroup>
  <Card title="Streaming TTS" icon="wave-square" href="/flutter/tts/stream">
    Stream audio as it's generated
  </Card>

  <Card title="Available Voices" icon="waveform" href="/flutter/tts/voices">
    Browse voice options
  </Card>
</CardGroup>



# Voices
Source: https://docs.runanywhere.ai/flutter/tts/voices

Browse and select TTS voices

RunAnywhere supports neural TTS voices via Piper and system voice fallback via `flutter_tts`.

## Piper Neural Voices

High-quality neural voices that run entirely on-device.

### English (US)

| Voice ID                         | Name     | Gender | Style          | Size   |
| -------------------------------- | -------- | ------ | -------------- | ------ |
| `vits-piper-en_US-lessac-medium` | Lessac   | Male   | Neutral        | \~50MB |
| `vits-piper-en_US-amy-medium`    | Amy      | Female | Neutral        | \~50MB |
| `vits-piper-en_US-ryan-medium`   | Ryan     | Male   | Conversational | \~50MB |
| `vits-piper-en_US-kathleen-low`  | Kathleen | Female | Soft           | \~20MB |

### English (UK)

| Voice ID                       | Name | Gender | Style    | Size   |
| ------------------------------ | ---- | ------ | -------- | ------ |
| `vits-piper-en_GB-alan-medium` | Alan | Male   | British  | \~50MB |
| `vits-piper-en_GB-alba-medium` | Alba | Female | Scottish | \~50MB |

### Other Languages

| Voice ID                           | Language | Gender | Size   |
| ---------------------------------- | -------- | ------ | ------ |
| `vits-piper-de_DE-thorsten-medium` | German   | Male   | \~50MB |
| `vits-piper-fr_FR-upmc-medium`     | French   | Male   | \~50MB |
| `vits-piper-es_ES-sharvard-medium` | Spanish  | Male   | \~50MB |
| `vits-piper-it_IT-riccardo-x_low`  | Italian  | Male   | \~20MB |
| `vits-piper-zh_CN-huayan-medium`   | Chinese  | Female | \~50MB |

## Registering Voices

```dart theme={null}
// US English - Lessac (recommended default)
Onnx.addModel(
  id: 'vits-piper-en_US-lessac-medium',
  name: 'Piper US English (Lessac)',
  url: 'https://github.com/RunanywhereAI/sherpa-onnx/releases/download/runanywhere-models-v1/vits-piper-en_US-lessac-medium.tar.gz',
  modality: ModelCategory.speechSynthesis,
);

// US English - Amy (female)
Onnx.addModel(
  id: 'vits-piper-en_US-amy-medium',
  name: 'Piper US English (Amy)',
  url: 'https://github.com/RunanywhereAI/sherpa-onnx/releases/download/runanywhere-models-v1/vits-piper-en_US-amy-medium.tar.gz',
  modality: ModelCategory.speechSynthesis,
);
```

## Switching Voices

```dart theme={null}
// Load default voice
await RunAnywhere.loadTTSVoice('vits-piper-en_US-lessac-medium');

// Switch to different voice
Future<void> switchVoice(String voiceId) async {
  await RunAnywhere.unloadTTSVoice();
  await RunAnywhere.loadTTSVoice(voiceId);
}
```

## Voice Selection UI

```dart theme={null}
class VoiceSelectorWidget extends StatefulWidget {
  @override
  _VoiceSelectorWidgetState createState() => _VoiceSelectorWidgetState();
}

class _VoiceSelectorWidgetState extends State<VoiceSelectorWidget> {
  final voices = [
    {'id': 'vits-piper-en_US-lessac-medium', 'name': 'Lessac (Male)'},
    {'id': 'vits-piper-en_US-amy-medium', 'name': 'Amy (Female)'},
    {'id': 'vits-piper-en_US-ryan-medium', 'name': 'Ryan (Male)'},
  ];

  String? _selectedVoice;
  bool _isLoading = false;

  Future<void> _selectVoice(String voiceId) async {
    setState(() => _isLoading = true);

    try {
      // Download if needed
      await for (final p in RunAnywhere.downloadModel(voiceId)) {
        if (p.state.isCompleted) break;
      }

      // Load voice
      await RunAnywhere.loadTTSVoice(voiceId);
      setState(() => _selectedVoice = voiceId);

      // Preview voice
      await _previewVoice();
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _previewVoice() async {
    final result = await RunAnywhere.synthesize(
      'Hello, this is a preview of my voice.',
    );
    // Play audio...
    void _ = result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Select Voice', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        IgnorePointer(
          ignoring: _isLoading,
          child: RadioGroup<String>(
            groupValue: _selectedVoice,
            onChanged: (id) {
              if (id != null) _selectVoice(id);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: voices
                  .map((voice) => RadioListTile<String>(
                        value: voice['id']!,
                        title: Text(voice['name']!),
                      ))
                  .toList(),
            ),
          ),
        ),
        if (_isLoading) LinearProgressIndicator(),
      ],
    );
  }
}
```

## System Voice Fallback

The SDK can fall back to system TTS voices via `flutter_tts` when neural voices aren't available:

```dart theme={null}
// System TTS is automatically available
// Use it for simple cases or as fallback
import 'package:flutter_tts/flutter_tts.dart';

final flutterTts = FlutterTts();

// List available system voices
final voices = await flutterTts.getVoices;

// Speak with system voice
await flutterTts.speak('Hello world');
```

## Choosing Between Neural and System Voices

| Feature       | Piper (Neural)    | System TTS   |
| ------------- | ----------------- | ------------ |
| Quality       | High              | Varies       |
| Latency       | \~100-500ms       | \~50ms       |
| Size          | 20-50MB per voice | 0 (built-in) |
| Offline       | Yes               | Yes          |
| Customization | Limited           | More options |

<Tip>
  **Recommendation:** Use Piper neural voices for the best quality. Fall back to system TTS for
  quick responses or when storage is limited.
</Tip>

## See Also

<CardGroup>
  <Card title="synthesize()" icon="volume-high" href="/flutter/tts/synthesize">
    Basic synthesis
  </Card>

  <Card title="Voice Agent" icon="robot" href="/flutter/voice-agent">
    Complete voice pipeline
  </Card>
</CardGroup>



# Voice Activity Detection
Source: https://docs.runanywhere.ai/flutter/vad

Detect when users start and stop speaking

Voice Activity Detection (VAD) automatically detects speech in audio streams, enabling hands-free voice interfaces.

## Overview

VAD determines when a user is speaking vs. silent, which is essential for:

* Knowing when to start/stop recording
* Triggering transcription at the right time
* Building push-to-talk or hands-free interfaces

The SDK provides energy-based VAD with Silero VAD for accurate speech detection.

## Automatic VAD with Voice Session

The easiest way to use VAD is through the Voice Agent pipeline:

```dart theme={null}
final session = await RunAnywhere.startVoiceSession(
  config: VoiceSessionConfig(
    speechThreshold: 0.03,    // Audio level threshold
    silenceDuration: 1.5,     // Seconds of silence before processing
  ),
);

session.events.listen((event) {
  switch (event) {
    case VoiceSessionListening(:final audioLevel):
      // Show audio level meter
      updateAudioMeter(audioLevel);
    case VoiceSessionSpeechStarted():
      print('User started speaking');
    case VoiceSessionProcessing():
      print('Processing speech...');
    default:
      break;
  }
});
```

## VoiceSessionConfig for VAD

| Parameter         | Type     | Default | Description                             |
| ----------------- | -------- | ------- | --------------------------------------- |
| `speechThreshold` | `double` | 0.03    | Audio level to trigger speech detection |
| `silenceDuration` | `double` | 1.5     | Seconds of silence before processing    |

```dart theme={null}
// More sensitive (quieter environments)
final quietConfig = VoiceSessionConfig(
  speechThreshold: 0.01,
  silenceDuration: 1.0,
);

// Less sensitive (noisy environments)
final noisyConfig = VoiceSessionConfig(
  speechThreshold: 0.1,
  silenceDuration: 2.0,
);
```

## Building a Voice Level Indicator

```dart theme={null}
class VoiceLevelIndicator extends StatefulWidget {
  final Stream<double> audioLevelStream;

  const VoiceLevelIndicator({required this.audioLevelStream});

  @override
  _VoiceLevelIndicatorState createState() => _VoiceLevelIndicatorState();
}

class _VoiceLevelIndicatorState extends State<VoiceLevelIndicator> {
  double _level = 0.0;
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = widget.audioLevelStream.listen((level) {
      setState(() => _level = level);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      child: LinearProgressIndicator(
        value: _level.clamp(0.0, 1.0),
        backgroundColor: Colors.grey[300],
        valueColor: AlwaysStoppedAnimation(
          _level > 0.03 ? Colors.green : Colors.grey,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
```

## Voice Session with VAD Events

```dart theme={null}
class VoiceAssistant extends StatefulWidget {
  @override
  _VoiceAssistantState createState() => _VoiceAssistantState();
}

class _VoiceAssistantState extends State<VoiceAssistant> {
  VoiceSessionHandle? _session;
  double _audioLevel = 0.0;
  bool _isSpeaking = false;
  String _status = 'Ready';

  Future<void> _startSession() async {
    _session = await RunAnywhere.startVoiceSession(
      config: VoiceSessionConfig(
        speechThreshold: 0.03,
        silenceDuration: 1.5,
        autoPlayTTS: true,
        continuousMode: true,
      ),
    );

    _session!.events.listen((event) {
      setState(() {
        switch (event) {
          case VoiceSessionListening(:final audioLevel):
            _audioLevel = audioLevel;
            _status = 'Listening...';
          case VoiceSessionSpeechStarted():
            _isSpeaking = true;
            _status = 'Speaking detected';
          case VoiceSessionProcessing():
            _isSpeaking = false;
            _status = 'Processing...';
          case VoiceSessionTranscribed(:final text):
            _status = 'You: $text';
          case VoiceSessionResponded(:final text):
            _status = 'AI: $text';
          case VoiceSessionSpeaking():
            _status = 'AI speaking...';
          case VoiceSessionTurnCompleted():
            _status = 'Ready';
          case VoiceSessionStopped():
            _status = 'Stopped';
          default:
            break;
        }
      });
    });
  }

  void _stopSession() {
    _session?.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Audio level indicator
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _isSpeaking ? Colors.green : Colors.blue,
            boxShadow: [
              BoxShadow(
                color: (_isSpeaking ? Colors.green : Colors.blue)
                    .withValues(alpha: 0.5),
                blurRadius: _audioLevel * 50,
                spreadRadius: _audioLevel * 20,
              ),
            ],
          ),
          child: Icon(
            _isSpeaking ? Icons.mic : Icons.mic_none,
            color: Colors.white,
            size: 48,
          ),
        ),

        SizedBox(height: 24),
        Text(_status, textAlign: TextAlign.center),

        SizedBox(height: 24),
        ElevatedButton(
          onPressed: _session == null ? _startSession : _stopSession,
          child: Text(_session == null ? 'Start' : 'Stop'),
        ),
      ],
    );
  }
}
```

## VAD Tuning Tips

<AccordionGroup>
  <Accordion title="Threshold Adjustment" icon="sliders">
    Lower thresholds (0.01) detect quieter speech but may trigger on background noise. Higher
    thresholds (0.1) require louder speech but are more robust to noise.
  </Accordion>

  <Accordion title="Silence Duration" icon="clock">
    Shorter duration (0.5s) feels more responsive but may cut off pauses mid-sentence. Longer duration
    (2.0s) allows natural pauses but feels slower.
  </Accordion>

  <Accordion title="Environment Calibration" icon="gauge">
    Consider measuring ambient noise level and adjusting threshold dynamically.
  </Accordion>
</AccordionGroup>

## See Also

<CardGroup>
  <Card title="Voice Agent" icon="robot" href="/flutter/voice-agent">
    Complete voice pipeline
  </Card>

  <Card title="Speech-to-Text" icon="microphone" href="/flutter/stt/transcribe">
    Audio transcription
  </Card>
</CardGroup>



# Voice Agent
Source: https://docs.runanywhere.ai/flutter/voice-agent

Complete voice conversation pipeline

The Voice Agent orchestrates the complete voice interaction pipeline: **VAD → STT → LLM → TTS**. Build hands-free voice assistants with a single API.

<Tip>
  See the Voice Agent in action! The [Flutter Starter
  Example](https://github.com/RunanywhereAI/flutter-starter-example) includes a complete voice
  assistant implementation.
</Tip>

## Overview

```mermaid theme={null}
graph LR
    A(User Speaks) --> B(VAD)
    B --> C(STT)
    C --> D(LLM)
    D --> E(TTS)
    E --> F(Audio Out)

    style A fill:#334155,color:#fff,stroke:#334155
    style B fill:#ff6900,color:#fff,stroke:#ff6900
    style C fill:#ff6900,color:#fff,stroke:#ff6900
    style D fill:#ff6900,color:#fff,stroke:#ff6900
    style E fill:#ff6900,color:#fff,stroke:#ff6900
    style F fill:#334155,color:#fff,stroke:#334155
```

The pipeline automatically:

1. **Listens** for speech using VAD
2. **Transcribes** what the user says
3. **Generates** an AI response
4. **Speaks** the response back

## Prerequisites

Load all required models before starting a voice session:

```dart theme={null}
// Check if ready
if (!RunAnywhere.isVoiceAgentReady) {
  await RunAnywhere.loadSTTModel('sherpa-onnx-whisper-tiny.en');
  await RunAnywhere.loadModel('smollm2-360m-q8_0');
  await RunAnywhere.loadTTSVoice('vits-piper-en_US-lessac-medium');
}
```

## Basic Usage

```dart theme={null}
// Start voice session
final session = await RunAnywhere.startVoiceSession();

// Listen to events
session.events.listen((event) {
  switch (event) {
    case VoiceSessionListening(:final audioLevel):
      print('Listening... Level: $audioLevel');
    case VoiceSessionSpeechStarted():
      print('Speech detected!');
    case VoiceSessionTranscribed(:final text):
      print('User: $text');
    case VoiceSessionResponded(:final text):
      print('AI: $text');
    case VoiceSessionTurnCompleted(:final transcript, :final response):
      print('Turn complete - User: $transcript, AI: $response');
    default:
      break;
  }
});

// Stop when done
session.stop();
```

## VoiceSessionConfig

Configure voice session behavior:

```dart theme={null}
final session = await RunAnywhere.startVoiceSession(
  config: VoiceSessionConfig(
    silenceDuration: 1.5,     // Seconds of silence before processing
    speechThreshold: 0.03,    // Audio level threshold for speech
    autoPlayTTS: true,        // Automatically play TTS response
    continuousMode: true,     // Resume listening after TTS completes
  ),
);
```

| Parameter         | Type     | Default | Description                                |
| ----------------- | -------- | ------- | ------------------------------------------ |
| `silenceDuration` | `double` | 1.5     | Seconds of silence to trigger processing   |
| `speechThreshold` | `double` | 0.03    | Audio level threshold for speech detection |
| `autoPlayTTS`     | `bool`   | true    | Auto-play synthesized audio                |
| `continuousMode`  | `bool`   | true    | Keep listening after response              |

## VoiceSessionHandle

Control the voice session:

```dart theme={null}
final session = await RunAnywhere.startVoiceSession();

// Check state
print('Running: ${session.isRunning}');
print('Processing: ${session.isProcessing}');

// Start listening (called automatically)
await session.start();

// Force process current audio (push-to-talk mode)
await session.sendNow();

// Stop session
session.stop();

// Clean up
await session.dispose();
```

## Voice Session Events

| Event                       | Description        | Properties               |
| --------------------------- | ------------------ | ------------------------ |
| `VoiceSessionStarted`       | Session started    | -                        |
| `VoiceSessionListening`     | Actively listening | `audioLevel`             |
| `VoiceSessionSpeechStarted` | Speech detected    | -                        |
| `VoiceSessionProcessing`    | Processing audio   | -                        |
| `VoiceSessionTranscribed`   | Got transcription  | `text`                   |
| `VoiceSessionResponded`     | Got LLM response   | `text`                   |
| `VoiceSessionSpeaking`      | Playing TTS        | -                        |
| `VoiceSessionTurnCompleted` | Turn finished      | `transcript`, `response` |
| `VoiceSessionStopped`       | Session stopped    | -                        |
| `VoiceSessionError`         | Error occurred     | `message`                |

## Complete Example

```dart theme={null}
class VoiceAssistantScreen extends StatefulWidget {
  @override
  _VoiceAssistantScreenState createState() => _VoiceAssistantScreenState();
}

class _VoiceAssistantScreenState extends State<VoiceAssistantScreen> {
  VoiceSessionHandle? _session;
  List<ChatMessage> _messages = [];
  double _audioLevel = 0.0;
  String _status = 'Tap to start';
  bool _isActive = false;

  Future<void> _initializeModels() async {
    setState(() => _status = 'Loading models...');

    // Download and load all required models
    if (!RunAnywhere.isSTTModelLoaded) {
      await _downloadAndLoad('sherpa-onnx-whisper-tiny.en', 'STT');
      await RunAnywhere.loadSTTModel('sherpa-onnx-whisper-tiny.en');
    }

    if (!RunAnywhere.isModelLoaded) {
      await _downloadAndLoad('smollm2-360m-q8_0', 'LLM');
      await RunAnywhere.loadModel('smollm2-360m-q8_0');
    }

    if (!RunAnywhere.isTTSVoiceLoaded) {
      await _downloadAndLoad('vits-piper-en_US-lessac-medium', 'TTS');
      await RunAnywhere.loadTTSVoice('vits-piper-en_US-lessac-medium');
    }

    setState(() => _status = 'Ready');
  }

  Future<void> _downloadAndLoad(String modelId, String label) async {
    await for (final p in RunAnywhere.downloadModel(modelId)) {
      setState(() => _status = 'Downloading $label: ${(p.percentage * 100).toStringAsFixed(0)}%');
      if (p.state.isCompleted) break;
    }
  }

  Future<void> _toggleSession() async {
    if (_session != null) {
      _session!.stop();
      setState(() {
        _session = null;
        _isActive = false;
        _status = 'Stopped';
      });
      return;
    }

    // Ensure models are loaded
    if (!RunAnywhere.isVoiceAgentReady) {
      await _initializeModels();
    }

    // Start session
    _session = await RunAnywhere.startVoiceSession(
      config: VoiceSessionConfig(
        silenceDuration: 1.5,
        autoPlayTTS: true,
        continuousMode: true,
      ),
    );

    setState(() => _isActive = true);

    // Handle events
    _session!.events.listen((event) {
      setState(() {
        switch (event) {
          case VoiceSessionListening(:final audioLevel):
            _audioLevel = audioLevel;
            _status = 'Listening...';

          case VoiceSessionSpeechStarted():
            _status = 'Speech detected';

          case VoiceSessionProcessing():
            _status = 'Processing...';

          case VoiceSessionTranscribed(:final text):
            _messages.add(ChatMessage(text: text, isUser: true));

          case VoiceSessionResponded(:final text):
            _messages.add(ChatMessage(text: text, isUser: false));

          case VoiceSessionSpeaking():
            _status = 'Speaking...';

          case VoiceSessionTurnCompleted():
            _status = 'Listening...';

          case VoiceSessionError(:final message):
            _status = 'Error: $message';

          case VoiceSessionStopped():
            _status = 'Stopped';
            _isActive = false;
          default:
            break;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Voice Assistant')),
      body: Column(
        children: [
          // Chat messages
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final msg = _messages[index];
                return Align(
                  alignment: msg.isUser
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: msg.isUser ? Colors.blue : Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      msg.text,
                      style: TextStyle(
                        color: msg.isUser ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Status and controls
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                // Audio level indicator
                if (_isActive)
                  Container(
                    height: 4,
                    child: LinearProgressIndicator(
                      value: _audioLevel.clamp(0.0, 1.0),
                    ),
                  ),

                SizedBox(height: 8),
                Text(_status),
                SizedBox(height: 16),

                // Start/Stop button
                FloatingActionButton(
                  onPressed: _toggleSession,
                  backgroundColor: _isActive ? Colors.red : Colors.blue,
                  child: Icon(_isActive ? Icons.stop : Icons.mic),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _session?.stop();
    super.dispose();
  }
}

class ChatMessage {
  final String text;
  final bool isUser;

  ChatMessage({required this.text, required this.isUser});
}
```

## Push-to-Talk Mode

For push-to-talk instead of continuous listening:

```dart theme={null}
final session = await RunAnywhere.startVoiceSession(
  config: VoiceSessionConfig(
    continuousMode: false,  // Don't auto-resume
  ),
);

// Manual control
void onButtonDown() async {
  await session.start();
}

void onButtonUp() async {
  await session.sendNow();  // Force process current audio
}
```

## Component States

Check individual component states:

```dart theme={null}
final states = RunAnywhere.getVoiceAgentComponentStates();

print('STT: ${states.stt}');    // loaded, loading, unloaded, error
print('LLM: ${states.llm}');
print('TTS: ${states.tts}');
print('All ready: ${states.isFullyReady}');
```

## Cleanup

```dart theme={null}
// Stop session
session.stop();

// Cleanup resources
RunAnywhere.cleanupVoiceAgent();

// Optionally unload models to free memory
await RunAnywhere.unloadSTTModel();
await RunAnywhere.unloadModel();
await RunAnywhere.unloadTTSVoice();
```

## See Also

<CardGroup>
  <Card title="VAD" icon="waveform-lines" href="/flutter/vad">
    Voice activity detection
  </Card>

  <Card title="STT" icon="microphone" href="/flutter/stt/transcribe">
    Speech-to-text
  </Card>

  <Card title="LLM" icon="brain" href="/flutter/llm/chat">
    Text generation
  </Card>

  <Card title="TTS" icon="volume-high" href="/flutter/tts/synthesize">
    Text-to-speech
  </Card>
</CardGroup>


