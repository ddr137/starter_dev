import 'package:flutter/material.dart';

extension IntColorExtension on int {
  MaterialColor toMaterialColor() {
    final Color baseColor = Color(this);
    final Map<int, Color> colorMap = {
      50: _generateShade(baseColor, 0.95),
      100: _generateShade(baseColor, 0.90),
      200: _generateShade(baseColor, 0.80),
      300: _generateShade(baseColor, 0.70),
      400: _generateShade(baseColor, 0.60),
      500: baseColor, // Base color
      600: _generateShade(baseColor, 0.40),
      700: _generateShade(baseColor, 0.30),
      800: _generateShade(baseColor, 0.20),
      900: _generateShade(baseColor, 0.10),
    };

    return MaterialColor(this, colorMap);
  }

  Color _generateShade(Color baseColor, double lightness) {
    final HSLColor hslColor = HSLColor.fromColor(baseColor);
    return hslColor.withLightness(lightness).toColor();
  }
}

extension MaterialColorExtension on MaterialColor {
  Color getShade(int shade) {
    // Pastikan shade yang diminta valid
    assert(shade >= 50 && shade <= 900 && shade % 100 == 0, 'Shade must be one of 50, 100, 200, ..., 900');
    return this[shade] ?? Colors.transparent; // Nilai default jika tidak ditemukan
  }
}