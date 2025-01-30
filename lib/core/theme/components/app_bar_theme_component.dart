import 'package:flutter/material.dart';

import '../../core.dart';

class AppBarThemeWidget {
  AppBarThemeWidget._();
  static final TextTheme textTheme = AppThemeTexts.getTextTheme('Inter');

  static final List<AppBarTheme> _appBars = [
    AppBarTheme(
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.black),
      actionsIconTheme: IconThemeData(color: Colors.black54),
      titleTextStyle: textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    ),
    AppBarTheme(
      centerTitle: false,
      backgroundColor: AppThemeColors.primary[50],
      iconTheme: const IconThemeData(color: Colors.white),
      actionsIconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    )
  ];
  //getter
  static AppBarTheme get light => _appBars.first;
  static AppBarTheme get dark => _appBars.last;
}
