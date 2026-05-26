import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryBlue = Color(0xFF00BFFF);
  static const Color darkBg = Color(0xFF0B0F19);
  static const Color cardBg = Color(0xFF141A24);
  static const Color neonPurple = Color(0xFF8A2BE2);

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkBg,
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      primary: primaryBlue,
      secondary: neonPurple,
    ),
  );
}