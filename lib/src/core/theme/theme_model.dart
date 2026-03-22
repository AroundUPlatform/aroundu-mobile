import 'package:flutter/material.dart';

/// Preset accent color choices available to the user.
enum AppAccentColor {
  blue(Color(0xFF0476FF), 'Blue'),
  yellow(Color(0xFFE5A100), 'Yellow'),
  green(Color(0xFF2EAE63), 'Green'),
  pink(Color(0xFFE91E8C), 'Pink'),
  red(Color(0xFFD64545), 'Red'),
  purple(Color(0xFF7C3AED), 'Purple'),
  orange(Color(0xFFE8590C), 'Orange'),
  teal(Color(0xFF0D9488), 'Teal'),
  custom(Color(0xFF0476FF), 'Custom');

  const AppAccentColor(this.color, this.label);
  final Color color;
  final String label;
}

/// Persisted theme settings: accent color, optional custom color, and mode.
class ThemeSettings {
  const ThemeSettings({
    this.accent = AppAccentColor.blue,
    this.customColor,
    this.mode = ThemeMode.system,
  });

  final AppAccentColor accent;
  final Color? customColor;
  final ThemeMode mode;

  /// The effective seed color used to build the theme.
  Color get seedColor => accent == AppAccentColor.custom && customColor != null
      ? customColor!
      : accent.color;

  ThemeSettings copyWith({
    AppAccentColor? accent,
    Color? customColor,
    ThemeMode? mode,
    bool clearCustomColor = false,
  }) {
    return ThemeSettings(
      accent: accent ?? this.accent,
      customColor: clearCustomColor ? null : (customColor ?? this.customColor),
      mode: mode ?? this.mode,
    );
  }
}
