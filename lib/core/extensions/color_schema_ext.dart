import 'package:flutter/material.dart';

extension ColorSchemeExtension on Color {
  ColorScheme toColorScheme({Brightness brightness = Brightness.light}) {
    return ColorScheme.fromSeed(
      seedColor: this,
      brightness: brightness,
    );
  }
}
