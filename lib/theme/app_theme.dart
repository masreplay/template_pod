import 'package:flutter/material.dart';

class AppTheme {
  ThemeData _build(Brightness brightness) {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
        brightness: brightness,
      ),
    );
  }

  ThemeData buildDarkTheme() {
    return _build(Brightness.dark);
  }

  ThemeData buildLightTheme() {
    return _build(Brightness.light);
  }
}
