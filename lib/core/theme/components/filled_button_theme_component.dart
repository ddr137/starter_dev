import 'package:flutter/material.dart';

import '../../core.dart';

class FilledThemeWidget {
  FilledThemeWidget._();
  static final List<FilledButtonThemeData> _filledBtns = [
    FilledButtonThemeData(
      style: ButtonStyle(
        iconColor:
            WidgetStateProperty.all(AppThemeColors.lightColorScheme.onPrimary),
        padding: WidgetStateProperty.all(const EdgeInsets.all(16)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        textStyle: WidgetStateProperty.all(
          AppThemeTexts.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
    FilledButtonThemeData(
      style: ButtonStyle(
        iconColor:
            WidgetStateProperty.all(AppThemeColors.darkColorScheme.onPrimary),
        padding: WidgetStateProperty.all(const EdgeInsets.all(16)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        textStyle: WidgetStateProperty.all(
          AppThemeTexts.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    )
  ];
  //getter
  static FilledButtonThemeData get light => _filledBtns.first;
  static FilledButtonThemeData get dark => _filledBtns.last;
}
