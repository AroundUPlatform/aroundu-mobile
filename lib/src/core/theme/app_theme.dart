import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Semantic palette that adapts to light / dark mode.
/// The [primary] color is now derived from the user-chosen seed.
class AppPalette {
  const AppPalette._();

  static const Color defaultPrimary = Color(0xFF0476FF);
  static const Color background = Color(0xFFF6F9FF);
  static const Color backgroundDark = Color(0xFF0E1218);
  static const Color surface = Colors.white;
  static const Color surfaceDark = Color(0xFF171D26);
  static const Color textPrimary = Color(0xFF1B1E2B);
  static const Color textPrimaryDark = Color(0xFFF3F6FC);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textSecondaryDark = Color(0xFFA7B0BF);
  static const Color border = Color(0xFFDEE3EE);
  static const Color borderDark = Color(0xFF2A3341);
  static const Color success = Color(0xFF2EAE63);
  static const Color warning = Color(0xFFE49B12);
  static const Color danger = Color(0xFFD64545);

  /// Kept for backward-compat — screens that haven't migrated.
  static const Color primary = defaultPrimary;
}

/// Build a light [ThemeData] from [seedColor].
ThemeData buildAroundUTheme({Color seedColor = AppPalette.defaultPrimary}) {
  return _buildTheme(brightness: Brightness.light, seedColor: seedColor);
}

/// Build a dark [ThemeData] from [seedColor].
ThemeData buildAroundUDarkTheme({Color seedColor = AppPalette.defaultPrimary}) {
  return _buildTheme(brightness: Brightness.dark, seedColor: seedColor);
}

ThemeData _buildTheme({
  required Brightness brightness,
  required Color seedColor,
}) {
  final isDark = brightness == Brightness.dark;
  final background = isDark ? AppPalette.backgroundDark : AppPalette.background;
  final surface = isDark ? AppPalette.surfaceDark : AppPalette.surface;
  final textPrimary = isDark
      ? AppPalette.textPrimaryDark
      : AppPalette.textPrimary;
  final textSecondary = isDark
      ? AppPalette.textSecondaryDark
      : AppPalette.textSecondary;
  final border = isDark ? AppPalette.borderDark : AppPalette.border;
  final textTheme = GoogleFonts.interTextTheme();

  return ThemeData(
    useMaterial3: true,
    brightness: brightness,
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      primary: seedColor,
      surface: surface,
      brightness: brightness,
    ),
    scaffoldBackgroundColor: background,
    textTheme: textTheme.copyWith(
      // Display / Headline — used in hero text
      displayLarge: textTheme.displayLarge?.copyWith(color: textPrimary),
      displayMedium: textTheme.displayMedium?.copyWith(color: textPrimary),
      displaySmall: textTheme.displaySmall?.copyWith(color: textPrimary),
      headlineLarge: textTheme.headlineLarge?.copyWith(color: textPrimary),
      headlineMedium: textTheme.headlineMedium?.copyWith(color: textPrimary),
      headlineSmall: textTheme.headlineSmall?.copyWith(color: textPrimary),
      // Title
      titleLarge: textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: textPrimary,
      ),
      titleMedium: textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 17,
        color: textPrimary,
      ),
      titleSmall: textTheme.titleSmall?.copyWith(color: textPrimary),
      // Body
      bodyLarge: textTheme.bodyLarge?.copyWith(
        fontSize: 15,
        color: textPrimary,
      ),
      bodyMedium: textTheme.bodyMedium?.copyWith(
        fontSize: 14,
        color: textSecondary,
      ),
      bodySmall: textTheme.bodySmall?.copyWith(color: textSecondary),
      // Label
      labelLarge: textTheme.labelLarge?.copyWith(color: textPrimary),
      labelMedium: textTheme.labelMedium?.copyWith(color: textSecondary),
      labelSmall: textTheme.labelSmall?.copyWith(color: textSecondary),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      foregroundColor: textPrimary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: surface,
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      hintStyle: TextStyle(color: textSecondary),
      labelStyle: TextStyle(color: textSecondary),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: seedColor, width: 1.5),
      ),
    ),
    cardTheme: CardThemeData(
      color: surface,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: surface,
      selectedItemColor: seedColor,
      unselectedItemColor: textSecondary,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: surface,
      indicatorColor: seedColor.withValues(alpha: 0.12),
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: seedColor,
      foregroundColor: Colors.white,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: seedColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: seedColor,
        side: BorderSide(color: border),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: seedColor),
    ),
    dividerTheme: DividerThemeData(color: border, thickness: 1),
    dialogTheme: DialogThemeData(
      backgroundColor: surface,
      titleTextStyle: textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: textPrimary,
      ),
      contentTextStyle: textTheme.bodyLarge?.copyWith(
        fontSize: 15,
        color: textPrimary,
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: isDark
          ? const Color(0xFF1E2530)
          : const Color(0xFFF0F3F8),
      labelStyle: TextStyle(color: textSecondary, fontSize: 11),
      side: BorderSide(color: border),
    ),
    listTileTheme: ListTileThemeData(
      textColor: textPrimary,
      iconColor: textSecondary,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return seedColor;
        return isDark ? const Color(0xFF6B7280) : const Color(0xFFD1D5DB);
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return seedColor.withValues(alpha: 0.4);
        }
        return isDark ? const Color(0xFF2A3341) : const Color(0xFFE5E7EB);
      }),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: surface,
      textStyle: TextStyle(color: textPrimary),
    ),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: surface),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return seedColor;
          return surface;
        }),
        foregroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return Colors.white;
          return textPrimary;
        }),
      ),
    ),
  );
}
