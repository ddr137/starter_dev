import 'package:flutter/material.dart';

import '../../core.dart';

class ElevatedThemeWidget {
  ElevatedThemeWidget._();
  static final List<ElevatedButtonThemeData> _elevatedBtns = [
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: AppThemeColors.primary,
        padding: const EdgeInsets.all(14),
        shadowColor: Colors.black,
        textStyle: AppThemeTexts.textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: AppThemeColors.primary[800],
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
