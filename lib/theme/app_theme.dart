import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'extra_colors.dart';

class AppTheme {
  ThemeData _build(Brightness brightness) {
    final themeData = ThemeData(
      useMaterial3: true,
      brightness: brightness,
      extensions: [buildExtraColors()],
      inputDecorationTheme: _buildInputDecorationTheme(brightness),
      colorScheme: _buildColorScheme(brightness),
    );

    return themeData.copyWith(textTheme: _buildTextTheme(themeData.textTheme));
  }

  ThemeData buildDarkTheme() => _build(Brightness.dark);

  ThemeData buildLightTheme() => _build(Brightness.light);

  InputDecorationTheme _buildInputDecorationTheme(Brightness brightness) {
    return const InputDecorationTheme(
      border: OutlineInputBorder(),
    );
  }

  TextTheme _buildTextTheme(TextTheme textTheme) {
    return GoogleFonts.ibmPlexSansArabicTextTheme(textTheme);
  }

  ExtraColors buildExtraColors() {
    return const ExtraColors(
      success: Color.fromARGB(255, 28, 101, 30),
      onSuccess: Colors.white,
    );
  }

  ColorScheme _buildColorScheme(Brightness brightness) {
    return ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: brightness,
    );
  }
}
