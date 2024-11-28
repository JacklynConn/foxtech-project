import 'package:flutter/material.dart';

// Light theme colors
Color primary = const Color(0xFFFD7F2C);
Color secondaryColor = const Color(0xFFFD9346);
Color text = const Color(0xFF000000);
Color background = const Color(0xFFFFFFFF);
Color iconNavigation = const Color(0xFFFD7F2C);

// Dark theme colors
Color darkPrimary = const Color(0xFF1A1A1A);
Color darkAccent = const Color(0xFFFD7F2C);
Color darkText = const Color(0xFFE0E0E0);
Color darkBackground = const Color(0xFF121212);
Color darkIconNavigation = const Color(0xFFFD7F2C);
Color unselectedItemColor = const Color(0xFFB5B5B5);

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primary,
    primaryColorLight: primary,
    highlightColor: secondaryColor,
    hintColor: secondaryColor,
    scaffoldBackgroundColor: background,
    iconTheme: IconThemeData(color: iconNavigation),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: primary,
    primaryColorLight: darkPrimary,
    highlightColor: darkAccent,
    hintColor: darkAccent,
    scaffoldBackgroundColor: darkBackground,
    iconTheme: IconThemeData(color: darkIconNavigation),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}
