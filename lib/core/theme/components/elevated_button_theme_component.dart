import 'package:flutter/material.dart';

import '../../core.dart';

class ElevatedThemeWidget {
  ElevatedThemeWidget._();
  static final List<ElevatedButtonThemeData> _elevatedBtns = [
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: AppThemeColors.primary,
        padding: const EdgeInsets.all(
          16,
        ),
        shadowColor: Colors.black,
      ),
    ),
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: AppThemeColors.primary[50],
        padding: const EdgeInsets.all(16),
        shadowColor: Colors.black,
      ),
    ),
  ];
  //getter
  static ElevatedButtonThemeData get light => _elevatedBtns.first;
  static ElevatedButtonThemeData get dark => _elevatedBtns.last;
}
