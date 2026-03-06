import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'src/core/config/app_environment.dart';
import 'src/core/logging/app_logger.dart';

// ── Riverpod observer — logs every provider state transition ─────────────────

class _RiverpodLogger extends ProviderObserver {
  static final _log = AppLogger.tag('Riverpod');

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    _log.d('CREATED  ${provider.name ?? provider.runtimeType}');
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    _log.d('DISPOSED ${provider.name ?? provider.runtimeType}');
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    _log.d('UPDATED  ${provider.name ?? provider.runtimeType}');
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    _log.e(
      'FAILED   ${provider.name ?? provider.runtimeType}',
      error: error,
      stackTrace: stackTrace,
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load .env before anything reads AppEnvironment
  await dotenv.load(fileName: '.env');

  // ── Startup diagnostics ──────────────────────────────────────────────────
  final log = AppLogger.tag('Bootstrap');
  log.i(
    'AroundU starting up  '
    'debug: $kDebugMode  '
    'platform: ${defaultTargetPlatform.name}',
  );
  log.i('API base URL: ${AppEnvironment.apiBaseUrl}');

  final mapsKey = AppEnvironment.googleMapsApiKey.trim();
  if (mapsKey.isEmpty) {
    log.e(
      'GOOGLE_MAPS_API_KEY is NOT set in .env!  '
      'Map tiles and Places API will not work.',
    );
  } else {
    log.i('Google Maps API key loaded  (${mapsKey.length} chars)');
  }

  // ── Global Flutter error handler ─────────────────────────────────────────
  FlutterError.onError = (FlutterErrorDetails details) {
    AppLogger.tag('FlutterError').e(
      details.exceptionAsString(),
      error: details.exception,
      stackTrace: details.stack,
    );
    FlutterError.presentError(details);
  };

  // Catch errors outside Flutter's framework (async, isolates).
  PlatformDispatcher.instance.onError = (error, stack) {
    AppLogger.tag(
      'PlatformDispatcher',
    ).e('Unhandled platform error', error: error, stackTrace: stack);
    return false; // rethrow so the OS can handle it
  };

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    ProviderScope(
      observers: kDebugMode ? [_RiverpodLogger()] : const [],
      child: const AroundUApp(),
    ),
  );
}
