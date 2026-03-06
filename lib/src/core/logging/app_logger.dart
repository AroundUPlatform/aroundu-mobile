import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

// ──────────────────────────────────────────────────────────────────────────────
// AroundU — Application Logger
//
// Industry-standard structured logging using the `logger` package.
// In DEBUG builds all levels are emitted. In RELEASE builds only warnings
// and above are emitted (production safety — no sensitive data leaks).
//
// Usage:
//   // Get a module-specific logger:
//   final _log = AppLogger.tag('LocationPicker');
//   _log.v('Verbose detail');
//   _log.d('Debug info');
//   _log.i('Important state change');
//   _log.w('Unexpected but recoverable');
//   _log.e('Error', error: e, stackTrace: st);
//
//   // Or use the global convenience helpers:
//   AppLogger.debug('some message');          // legacy compatibility
//   AppLogger.error('boom', error: e);        // legacy compatibility
// ──────────────────────────────────────────────────────────────────────────────

/// Custom log filter: VERBOSE+ in debug; WARNING+ in release.
class _AroundUFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    if (kDebugMode) return true;
    return event.level.index >= Level.warning.index;
  }
}

/// Custom printer that prepends a bracketed tag to each line so every log line
/// is globally grep-able from `flutter logs` / `adb logcat`:
///   ┌─────────────────────────────────────────────
///   │ [AroundU/Network] POST /api/v1/jobs  ← tag
///   └─────────────────────────────────────────────
class _TaggedPrinter extends LogPrinter {
  _TaggedPrinter(this.tag);

  final String tag;

  static const _levelEmoji = {
    Level.trace: '🔍',
    Level.debug: '🐛',
    Level.info: '✅',
    Level.warning: '⚠️ ',
    Level.error: '❌',
    Level.fatal: '💀',
  };

  static const _levelLabel = {
    Level.trace: 'TRACE',
    Level.debug: 'DEBUG',
    Level.info: 'INFO ',
    Level.warning: 'WARN ',
    Level.error: 'ERROR',
    Level.fatal: 'FATAL',
  };

  @override
  List<String> log(LogEvent event) {
    final emoji = _levelEmoji[event.level] ?? '•';
    final label = _levelLabel[event.level] ?? event.level.name.toUpperCase();
    final header = '$emoji [$label][AroundU/$tag] ${event.message}';
    final lines = <String>[header];

    if (event.error != null) {
      lines.add('   ↳ ERROR: ${event.error}');
    }
    if (event.stackTrace != null) {
      // Print only the first 10 frames to keep logs readable.
      final frames = event.stackTrace
          .toString()
          .split('\n')
          .take(10)
          .map((l) => '   | $l')
          .join('\n');
      lines.add(frames);
    }
    return lines;
  }
}

/// Singleton registry of per-tag [Logger] instances.
final Map<String, Logger> _loggers = {};

Logger _makeLogger(String tag) => Logger(
  filter: _AroundUFilter(),
  printer: _TaggedPrinter(tag),
  output: ConsoleOutput(),
);

// ─────────────────────────────────────────────────────────────────────────────

class AppLogger {
  AppLogger._();

  // ── Factory ────────────────────────────────────────────────────────────────

  /// Returns (and caches) a [Logger] scoped to [tag].
  ///
  /// Example:
  /// ```dart
  /// final _log = AppLogger.tag('PlacesAPI');
  /// _log.d('Searching: $query');
  /// _log.e('Places autocomplete failed', error: e, stackTrace: st);
  /// ```
  static Logger tag(String tag) =>
      _loggers.putIfAbsent(tag, () => _makeLogger(tag));

  // ── Global convenience API (backwards-compatible) ──────────────────────────

  static final Logger _root = _makeLogger('App');

  /// Verbose — low-level trace information (request/response payloads, etc.)
  static void verbose(String message) => _root.t(message);

  /// Debug — general diagnostic messages.
  static void debug(String message) => _root.d(message);

  /// Info — notable events (screen open, login success, etc.)
  static void info(String message) => _root.i(message);

  /// Warning — unexpected but recoverable situation.
  static void warning(String message) => _root.w(message);

  /// Error — caught exception with optional error + stack trace.
  static void error(String message, {Object? error, StackTrace? stackTrace}) =>
      _root.e(message, error: error, stackTrace: stackTrace);

  /// Fatal — unrecoverable crash.
  static void fatal(String message, {Object? error, StackTrace? stackTrace}) =>
      _root.f(message, error: error, stackTrace: stackTrace);
}
