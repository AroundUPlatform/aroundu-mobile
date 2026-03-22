import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logging/app_logger.dart';
import '../providers/core_providers.dart';
import '../theme/theme_model.dart';

// ─────────────── Theme Mode (backward-compat) ─────────────────

class ThemeModeController extends Notifier<ThemeMode> {
  @override
  ThemeMode build() {
    _restore();
    return ThemeMode.system;
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    state = mode;
    // Also sync to the full ThemeSettings
    ref.read(themeSettingsProvider.notifier).setMode(mode);
    await _persist(mode);
  }

  Future<void> toggle() async {
    final next = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    await setThemeMode(next);
  }

  Future<void> _restore() async {
    try {
      final persisted = await ref.read(localStorageProvider).readThemeMode();
      final restored = _decodeThemeMode(persisted);
      if (restored != null) {
        state = restored;
      }
    } catch (error, stackTrace) {
      AppLogger.error(
        'Failed restoring theme mode',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> _persist(ThemeMode mode) async {
    try {
      await ref.read(localStorageProvider).saveThemeMode(mode.name);
    } catch (error, stackTrace) {
      AppLogger.error(
        'Failed persisting theme mode',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  ThemeMode? _decodeThemeMode(String? raw) {
    switch (raw) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      case 'system':
        return ThemeMode.system;
      default:
        return null;
    }
  }
}

final themeModeProvider = NotifierProvider<ThemeModeController, ThemeMode>(
  ThemeModeController.new,
);

// ─────────────── Full Theme Settings (accent + color + mode) ───────────────

class ThemeSettingsController extends Notifier<ThemeSettings> {
  @override
  ThemeSettings build() {
    _restore();
    return const ThemeSettings();
  }

  Future<void> setAccent(AppAccentColor accent) async {
    state = state.copyWith(accent: accent, clearCustomColor: true);
    await _persist();
  }

  Future<void> setCustomColor(Color color) async {
    state = state.copyWith(accent: AppAccentColor.custom, customColor: color);
    await _persist();
  }

  Future<void> setMode(ThemeMode mode) async {
    state = state.copyWith(mode: mode);
    await _persist();
  }

  Future<void> _restore() async {
    try {
      final storage = ref.read(localStorageProvider);
      final accentName = await storage.readString('ui.accent_color.v1');
      final customHex = await storage.readString('ui.custom_color.v1');
      final modeRaw = await storage.readThemeMode();

      var accent = AppAccentColor.blue;
      if (accentName != null) {
        accent = AppAccentColor.values.firstWhere(
          (e) => e.name == accentName,
          orElse: () => AppAccentColor.blue,
        );
      }

      Color? customColor;
      if (customHex != null && customHex.isNotEmpty) {
        final value = int.tryParse(customHex, radix: 16);
        if (value != null) customColor = Color(value);
      }

      ThemeMode mode = ThemeMode.system;
      if (modeRaw != null) {
        mode = ThemeMode.values.firstWhere(
          (e) => e.name == modeRaw,
          orElse: () => ThemeMode.system,
        );
      }

      state = ThemeSettings(
        accent: accent,
        customColor: customColor,
        mode: mode,
      );
    } catch (error, stackTrace) {
      AppLogger.error(
        'Failed restoring theme settings',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> _persist() async {
    try {
      final storage = ref.read(localStorageProvider);
      await storage.saveString('ui.accent_color.v1', state.accent.name);
      if (state.customColor != null) {
        await storage.saveString(
          'ui.custom_color.v1',
          state.customColor!.toARGB32().toRadixString(16),
        );
      }
      await storage.saveThemeMode(state.mode.name);
    } catch (error, stackTrace) {
      AppLogger.error(
        'Failed persisting theme settings',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}

final themeSettingsProvider =
    NotifierProvider<ThemeSettingsController, ThemeSettings>(
      ThemeSettingsController.new,
    );
