import 'package:flutter/material.dart';

import '../../core.dart';

class OutlineThemeWidget {
  OutlineThemeWidget._();
  static final List<OutlinedButtonThemeData> _outlineBtns = [
    OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppThemeColors.primary,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(16),
        side: BorderSide(
          color: AppThemeColors.primary,
          width: 1.0,
        ),
      ),
    ),
    OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppThemeColors.primary[50],
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(16),
        side: BorderSide(
          color: AppThemeColors.primary[50]!,
          width: 1.0,
        ),
      ),
    ),
  ];

  // Getter
  static OutlinedButtonThemeData get light => _outlineBtns.first;
  static OutlinedButtonThemeData get dark => _outlineBtns.last;
}