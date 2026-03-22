import 'package:aroundu/src/core/theme/app_theme.dart';
import 'package:aroundu/src/core/theme/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;
  group('AppAccentColor', () {
    test('has 9 values', () {
      expect(AppAccentColor.values.length, 9);
    });

    test('all have non-null colors', () {
      for (final accent in AppAccentColor.values) {
        expect(accent.color, isNotNull, reason: '${accent.name} color');
      }
    });

    test('all have non-empty fallback labels', () {
      for (final accent in AppAccentColor.values) {
        expect(accent.label, isNotEmpty, reason: '${accent.name} label');
      }
    });

    test('blue is default', () {
      expect(AppAccentColor.blue.color, const Color(0xFF0476FF));
    });
  });

  group('ThemeSettings', () {
    test('defaults to blue accent and system mode', () {
      const settings = ThemeSettings();
      expect(settings.accent, AppAccentColor.blue);
      expect(settings.mode, ThemeMode.system);
      expect(settings.customColor, isNull);
    });

    test('copyWith retains unchanged fields', () {
      const settings = ThemeSettings(
        accent: AppAccentColor.pink,
        mode: ThemeMode.dark,
      );
      final copy = settings.copyWith(accent: AppAccentColor.green);
      expect(copy.accent, AppAccentColor.green);
      expect(copy.mode, ThemeMode.dark);
    });

    test('seedColor uses accent color by default', () {
      const settings = ThemeSettings(accent: AppAccentColor.teal);
      expect(settings.seedColor, AppAccentColor.teal.color);
    });

    test('seedColor uses customColor when accent is custom', () {
      const custom = Color(0xFF123456);
      const settings = ThemeSettings(
        accent: AppAccentColor.custom,
        customColor: custom,
      );
      expect(settings.seedColor, custom);
    });

    test('copyWith clearCustomColor resets custom color', () {
      const settings = ThemeSettings(
        accent: AppAccentColor.custom,
        customColor: Color(0xFFABCDEF),
      );
      final cleared = settings.copyWith(clearCustomColor: true);
      expect(cleared.customColor, isNull);
    });
  });

  group('buildAroundUTheme (light)', () {
    testWidgets('produces a light theme with default seed', (tester) async {
      final theme = buildAroundUTheme();
      expect(theme.brightness, Brightness.light);
      expect(theme.useMaterial3, isTrue);
    });

    testWidgets('produces a light theme with custom seed', (tester) async {
      final theme = buildAroundUTheme(seedColor: AppAccentColor.green.color);
      expect(theme.brightness, Brightness.light);
      expect(theme.colorScheme.primary, AppAccentColor.green.color);
    });

    testWidgets('uses all accent colors without error', (tester) async {
      for (final accent in AppAccentColor.values) {
        final theme = buildAroundUTheme(seedColor: accent.color);
        expect(theme.brightness, Brightness.light);
        expect(theme.colorScheme.primary, accent.color);
      }
    });
  });

  group('buildAroundUDarkTheme', () {
    testWidgets('produces a dark theme with default seed', (tester) async {
      final theme = buildAroundUDarkTheme();
      expect(theme.brightness, Brightness.dark);
      expect(theme.useMaterial3, isTrue);
    });

    testWidgets('produces a dark theme with custom seed', (tester) async {
      final theme = buildAroundUDarkTheme(seedColor: AppAccentColor.red.color);
      expect(theme.brightness, Brightness.dark);
      expect(theme.colorScheme.primary, AppAccentColor.red.color);
    });

    testWidgets('scaffold background is dark palette', (tester) async {
      final theme = buildAroundUDarkTheme();
      expect(theme.scaffoldBackgroundColor, AppPalette.backgroundDark);
    });
  });

  group('AppPalette', () {
    test('light and dark backgrounds differ', () {
      expect(AppPalette.background, isNot(AppPalette.backgroundDark));
    });

    test('light and dark surfaces differ', () {
      expect(AppPalette.surface, isNot(AppPalette.surfaceDark));
    });

    test('semantic colors are defined', () {
      expect(AppPalette.success, isNotNull);
      expect(AppPalette.warning, isNotNull);
      expect(AppPalette.danger, isNotNull);
    });
  });
}
