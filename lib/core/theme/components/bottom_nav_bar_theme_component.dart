import 'package:flutter/material.dart';

import '../../core.dart';

class BottomNavBarThemeWidget {
  BottomNavBarThemeWidget._();
  static final List<BottomNavigationBarThemeData> _bottomNavBars = [
    BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: AppThemeColors.primary[800],
    ),
    BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppThemeColors.primary[50],
      selectedItemColor: Colors.white,
    )
  ];
  //getter
  static BottomNavigationBarThemeData get light => _bottomNavBars.first;
  static BottomNavigationBarThemeData get dark => _bottomNavBars.last;
}
