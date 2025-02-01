import 'package:flutter/material.dart';

import '../core.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    // scaffoldBackgroundColor: AppThemeColors.scaffoldBgColor,
    // colorScheme: AppThemeColors.lightColorScheme,
    colorSchemeSeed: AppThemeColors.primary,
    textTheme: AppThemeTexts.textTheme,
    fontFamily: AppThemeFonts.getPoppins,
    fontFamilyFallback: AppThemeFonts.fonts,
    // typography: Typography.material2021(),
    appBarTheme: AppBarThemeWidget.light,
    elevatedButtonTheme: ElevatedThemeWidget.light,
    filledButtonTheme: FilledThemeWidget.light,
    outlinedButtonTheme: OutlineThemeWidget.light,
    bottomNavigationBarTheme: BottomNavBarThemeWidget.light,
    listTileTheme: ListTileThemeData(
      selectedTileColor: AppThemeColors.primary,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
    ),
    dividerTheme: DividerThemeData(
      thickness: 0.3,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: AppThemeTexts.textTheme.labelLarge,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: AppThemeColors.primary,
    textTheme: AppThemeTexts.textTheme,
    fontFamily: AppThemeFonts.getInter,
    fontFamilyFallback: AppThemeFonts.fonts,
    appBarTheme: AppBarThemeWidget.dark,
    elevatedButtonTheme: ElevatedThemeWidget.dark,
    filledButtonTheme: FilledThemeWidget.dark,
    bottomNavigationBarTheme: BottomNavBarThemeWidget.dark,
    outlinedButtonTheme: OutlineThemeWidget.dark,
    listTileTheme: const ListTileThemeData(selectedTileColor: Colors.white10),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
    typography: Typography.material2021(),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0.1,
      color: Colors.black,
    ),
  );
}
