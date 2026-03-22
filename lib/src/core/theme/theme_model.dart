import 'package:flutter/material.dart';

import '../l10n/l10n_extension.dart';

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

  /// Fallback English label (used only when no BuildContext is available).
  final String label;
}

/// Provides locale-aware label for [AppAccentColor].
extension AppAccentColorL10n on AppAccentColor {
  String localizedLabel(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case AppAccentColor.blue:
        return l10n.accentColorBlue;
      case AppAccentColor.yellow:
        return l10n.accentColorYellow;
      case AppAccentColor.green:
        return l10n.accentColorGreen;
      case AppAccentColor.pink:
        return l10n.accentColorPink;
      case AppAccentColor.red:
        return l10n.accentColorRed;
      case AppAccentColor.purple:
        return l10n.accentColorPurple;
      case AppAccentColor.orange:
        return l10n.accentColorOrange;
      case AppAccentColor.teal:
        return l10n.accentColorTeal;
      case AppAccentColor.custom:
        return l10n.accentColorCustom;
    }
  }
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
