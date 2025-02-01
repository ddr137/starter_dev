import 'package:flutter/material.dart';

import '../core.dart';

class AppThemeColors {
  AppThemeColors._();

  // ==================== Core Color Scheme ====================
  static final ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary.shade500,
    onPrimary: primary.shade50,
    primaryContainer: primary.shade100,
    onPrimaryContainer: primary.shade900,
    secondary: Color(0xFF7C3AED),
    onSecondary: Colors.white,
    secondaryContainer: Color(0xFFD1C4E9),
    onSecondaryContainer: Color(0xFF4A148C),
    tertiary: Color(0xFF03DAC6),
    onTertiary: Color(0xFF00201F),
    tertiaryContainer: Color(0xFF66FFF9),
    onTertiaryContainer: Color(0xFF00332F),
    error: Color(0xFFEF476F),
    onError: Colors.white,
    errorContainer: Color(0xFFFFDAD4),
    onErrorContainer: Color(0xFF790000),
    surface: Colors.white,
    onSurface: Color(0xFF1A1A1A),
    onSurfaceVariant: Color(0xFF444444),
    surfaceContainerLowest: Color(0xFFFFFFFF),
    surfaceContainerLow: Color(0xFFF8F8F8),
    surfaceContainer: Color(0xFFF4F4F4),
    surfaceContainerHigh: Color(0xFFEDEDED),
    surfaceContainerHighest: Color(0xFFF1F1F1),
    inverseSurface: Color(0xFF303030),
    onInverseSurface: Color(0xFFF1F1F1),
    inversePrimary: primary.shade700,
    shadow: Colors.black26,
    scrim: Colors.black38,
    outline: Color(0xFFCCCCCC),
    outlineVariant: Color(0xFFEEEEEE),
  );

  static final ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF9AC3FB),
    onPrimary: Color(0xFF091A7A),
    primaryContainer: Color(0xFF1E3A8A),
    onPrimaryContainer: Color(0xFFDCE6FF),
    secondary: Color(0xFFC4A5FF),
    onSecondary: Color(0xFF2A005C),
    secondaryContainer: Color(0xFF4A148C),
    onSecondaryContainer: Color(0xFFEDE7F6),
    tertiary: Color(0xFF80E1D9),
    onTertiary: Color(0xFF00332F),
    tertiaryContainer: Color(0xFF004E46),
    onTertiaryContainer: Color(0xFF99F6E4),
    error: Color(0xFFFF6B6B),
    onError: Color(0xFF41000E),
    errorContainer: Color(0xFFB3261E),
    onErrorContainer: Color(0xFFFFDAD4),
    surface: Color(0xFF1E1E1E),
    onSurface: Colors.white,
    onSurfaceVariant: Color(0xFFCCCCCC),
    surfaceContainerLowest: Color(0xFF0F0F0F),
    surfaceContainerLow: Color(0xFF191919),
    surfaceContainer: Color(0xFF222222),
    surfaceContainerHigh: Color(0xFF2A2A2A),
    surfaceContainerHighest: Color(0xFF2D2D2D),
    inverseSurface: Color(0xFFE0E0E0),
    onInverseSurface: Color(0xFF1A1A1A),
    inversePrimary: Color(0xFF1E40AF),
    shadow: Colors.black87,
    scrim: Colors.black,
    outline: Color(0xFF444444),
    outlineVariant: Color(0xFF333333),
  );

  // ==================== Core Color Palettes ====================

  // Primary Color (Blue)
  static final MaterialColor primary = 0xFF2563EB.toMaterialColor();

  // ==================== Core Colors ====================
  static const Color success = Color(0xFF2A9D8F);
  static const Color failure = Color(0xFFEF476F);
  static const Color warning = Color(0xFFFCA311);
  static const Color info = Color(0xFF5AA9E6);

  // ==================== Extended Colors ====================
  static final neutralGray = 0xFF9E9E9E.toMaterialColor();
}
