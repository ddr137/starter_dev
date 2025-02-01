import 'package:flutter/material.dart';

import '../../core.dart';

class AppBarThemeWidget {
  AppBarThemeWidget._();

  static final List<AppBarTheme> _appBars = [
    AppBarTheme(
      centerTitle: false,
      backgroundColor: AppThemeColors.lightColorScheme.surface,
      foregroundColor: AppThemeColors.lightColorScheme.onSurface,
      titleTextStyle: AppThemeTexts.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w500,
        color: AppThemeColors.lightColorScheme.onSurface,
      ),
    ),
    AppBarTheme(
      centerTitle: false,
      backgroundColor: AppThemeColors.darkColorScheme.surface,
      foregroundColor: AppThemeColors.darkColorScheme.onSurface,
      titleTextStyle: AppThemeTexts.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w500,
        color: AppThemeColors.darkColorScheme.onSurface,
      ),
    )
  ];
  //getter
  static AppBarTheme get light => _appBars.first;
  static AppBarTheme get dark => _appBars.last;
}
