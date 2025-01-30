import 'package:flutter/material.dart';

class FilledThemeWidget {
  FilledThemeWidget._();
  static final List<FilledButtonThemeData> _filledBtns = [
    FilledButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(const EdgeInsets.all(16)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
    FilledButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(const EdgeInsets.all(16)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    )
  ];
  //getter
  static FilledButtonThemeData get light => _filledBtns.first;
  static FilledButtonThemeData get dark => _filledBtns.last;
}
