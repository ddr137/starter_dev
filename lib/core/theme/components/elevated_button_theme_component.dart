import 'package:flutter/material.dart';

import '../../core.dart';

class ElevatedThemeWidget {
  ElevatedThemeWidget._();
  static final List<ElevatedButtonThemeData> _elevatedBtns = [
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        iconColor: AppThemeColors.lightColorScheme.onPrimary,
        backgroundColor: AppThemeColors.lightColorScheme.primary,
        foregroundColor: AppThemeColors.lightColorScheme.onPrimary,
        padding: const EdgeInsets.all(14),
        shadowColor: Colors.black,
        textStyle: AppThemeTexts.textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        iconColor: AppThemeColors.darkColorScheme.onPrimary,
        backgroundColor: AppThemeColors.darkColorScheme.primary,
        foregroundColor: AppThemeColors.darkColorScheme.onPrimary,
        padding: const EdgeInsets.all(14),
        shadowColor: Colors.black,
        textStyle: AppThemeTexts.textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ];
  //getter
  static ElevatedButtonThemeData get light => _elevatedBtns.first;
  static ElevatedButtonThemeData get dark => _elevatedBtns.last;
}
