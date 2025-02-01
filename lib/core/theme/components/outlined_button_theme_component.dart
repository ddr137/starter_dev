import 'package:flutter/material.dart';

import '../../core.dart';

class OutlineThemeWidget {
  OutlineThemeWidget._();
  static final List<OutlinedButtonThemeData> _outlineBtns = [
    OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        iconColor: AppThemeColors.lightColorScheme.primary,
        backgroundColor: Colors.transparent,
        foregroundColor: AppThemeColors.lightColorScheme.primary,
        padding: const EdgeInsets.all(16),
        side: BorderSide(
          color: AppThemeColors.primary,
          width: 1.0,
        ),
        textStyle: AppThemeTexts.textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        iconColor: AppThemeColors.darkColorScheme.primary,
        backgroundColor: Colors.transparent,
        foregroundColor: AppThemeColors.darkColorScheme.primary,
        padding: const EdgeInsets.all(16),
        side: BorderSide(
          color: AppThemeColors.primary[50]!,
          width: 1.0,
        ),
        textStyle: AppThemeTexts.textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ];

  // Getter
  static OutlinedButtonThemeData get light => _outlineBtns.first;
  static OutlinedButtonThemeData get dark => _outlineBtns.last;
}
