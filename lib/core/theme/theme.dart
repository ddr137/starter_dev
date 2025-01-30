import 'package:flutter/material.dart';

import '../core.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      // scaffoldBackgroundColor: AppThemeColors.scaffoldBgColor,
      colorScheme: AppThemeColors.lightColorScheme,
      // colorSchemeSeed: AppThemeColors.primary,
      fontFamily: AppThemeFonts.getInter,
      fontFamilyFallback: AppThemeFonts.fonts,
      appBarTheme: AppBarThemeWidget.light,
      elevatedButtonTheme: ElevatedThemeWidget.light,
      filledButtonTheme: FilledThemeWidget.light,
      outlinedButtonTheme: OutlineThemeWidget.light,
      bottomNavigationBarTheme: BottomNavBarThemeWidget.light,
      listTileTheme: const ListTileThemeData(
        selectedTileColor: AppThemeColors.primary,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
      ),
      typography: Typography.material2021(),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        color: Colors.white,
      ),
      dividerTheme: DividerThemeData(
        thickness: 0.3,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppThemeColors.primary,
          backgroundColor: AppThemeColors.primary[50],
          textStyle: AppThemeTexts.getTextTheme('Inter').labelLarge,
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          backgroundColor: Colors.white,
        ),
      ));

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: AppThemeColors.primary,
    textTheme: AppThemeTexts.getTextTheme('Inter'),
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
