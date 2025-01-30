import 'package:flutter/material.dart';

class AppThemeColors {
  AppThemeColors._(); // Private constructor

  // ==================== Core Color Palettes ====================
  
  // Primary Color (Blue)
  static const MaterialColor primary = MaterialColor(
    0xFF2563EB,
    <int, Color>{
      50: Color(0xFFE8F0FE),
      100: Color(0xFFD0E1FD),
      200: Color(0xFF9AC3FB),
      300: Color(0xFF64A4F8),
      400: Color(0xFF3D82F3),
      500: Color(0xFF2563EB), // Base
      600: Color(0xFF1D4ED8),
      700: Color(0xFF1539B6),
      800: Color(0xFF0F2795),
      900: Color(0xFF091A7A),
    },
  );

  // Semantic Colors
  static const Color success = Color(0xFF2A9D8F);
  static const Color failure = Color(0xFFEF476F);
  static const Color warning = Color(0xFFFCA311);
  static const Color info = Color(0xFF5AA9E6);

  // ==================== Light Theme ====================
  static final ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: Colors.white,
    secondary: Color(0xFF7C3AED), // Purple as secondary
    onSecondary: Colors.white,
    error: failure,
    onError: Colors.white,
    background: Color(0xFFF8F8FF), // Scaffold background
    onBackground: Color(0xFF1E1E1E), // Text on background
    surface: Colors.white, // Card/dialog background
    onSurface: Color(0xFF1E1E1E), // Text on surface
    surfaceVariant: Color(0xFFF1F1F1), // Alternate surface
  );

  // ==================== Dark Theme ====================
  static final ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: primary,
    onPrimary: Colors.black,
    secondary: Color(0xFFA78BFA), // Light purple
    onSecondary: Colors.black,
    error: Color(0xFFFF6B6B), // Brighter red for dark mode
    onError: Colors.black,
    background: Color(0xFF121212), // Dark scaffold
    onBackground: Colors.white,
    surface: Color(0xFF1E1E1E), // Dark surface
    onSurface: Colors.white,
    surfaceVariant: Color(0xFF2D2D2D),
  );

  // ==================== Extended Colors ====================
  static const Map<int, Color> neutralGray = {
    50: Color(0xFFFAFAFA),
    100: Color(0xFFF5F5F5),
    200: Color(0xFFEEEEEE),
    300: Color(0xFFE0E0E0),
    400: Color(0xFFBDBDBD),
    500: Color(0xFF9E9E9E),
    600: Color(0xFF757575),
    700: Color(0xFF616161),
    800: Color(0xFF424242),
    900: Color(0xFF212121),
  };
}