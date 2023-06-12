import 'package:flutter/material.dart';

class AppTheme {
  ThemeData _build(Brightness brightness) {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      inputDecorationTheme: _buildInputDecorationTheme(brightness),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
        brightness: brightness,
      ),
    );
  }

  ThemeData buildDarkTheme() => _build(Brightness.dark);

  ThemeData buildLightTheme() => _build(Brightness.light);

  InputDecorationTheme _buildInputDecorationTheme(Brightness brightness) {
    return const InputDecorationTheme(
      border: OutlineInputBorder(),
    );
  }
}
