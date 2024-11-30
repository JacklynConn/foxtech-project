import 'package:flutter/material.dart';

Color primary = const Color(0xFFFD7F2C);
Color secondaryColor = const Color(0xFFFD9346);
Color grey = const Color(0xFFA6A2A2);
Color lightGrey = const Color(0xFFE2E2E2);
Color white = const Color(0xFFFFFFFF);
Color black = const Color(0xFF000000);
Color deepLight = const Color(0xFFFFEBDD);
Color background = const Color(0xFFF5F5F5);

class AppColors {
  static const Color primary = Color(0xFFFD7F2C);
  static const Color secondaryColor = Color(0xFFFD9346);
  static const Color grey = Color(0xFFA6A2A2);
  static const Color lightGrey = Color(0xFFE2E2E2);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color deepLight = Color(0xFFFFEBDD);
}

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primary,
    primaryColorLight: primary,
    highlightColor: secondaryColor,
    cardColor: white,
    scaffoldBackgroundColor: background,
    textTheme: TextTheme(
      titleLarge: TextStyle(color: black),
      titleSmall: TextStyle(color: white),
      titleMedium: TextStyle(color: grey),
    ),
    iconTheme: IconThemeData(color: primary),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      actionsIconTheme: IconThemeData(color: black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primary,
      unselectedItemColor: grey,
      backgroundColor: white,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primary,
    primaryColorLight: primary,
    highlightColor: secondaryColor,
    iconTheme: IconThemeData(color: primary),
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      actionsIconTheme: IconThemeData(color: Colors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primary,
      unselectedItemColor: grey,
      backgroundColor: Colors.black,
    ),
  );
}
