import 'package:flutter/material.dart';

class AppThemeColors {
  // Light theme colors
  static Color enableColor = Colors.deepOrangeAccent;
  static Color buttonColor = Colors.deepOrangeAccent;
  static Color lightPrimary = Colors.grey.withOpacity(0.4);
  static Color primary = Colors.grey.withOpacity(0.2);
  static Color lightIconNavigation = Colors.deepOrangeAccent;
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color lightText = Color(0xFF000000);

  // Dark theme colors
  static Color darkPrimary = Colors.grey.withOpacity(0.5);
  static Color darkAccent = Colors.grey.withOpacity(0.2);
  static Color darkIconNavigation = Colors.deepOrangeAccent;
  static Color unselectedItemColor = Colors.grey;
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkText = Color(0xFFC1C1C1);
  static const Color dartGreyText = Color(0xFF8A8A8A);
}

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFD9D9D9),
    primaryColorLight: const Color(0xFF9F9F9F),
    primaryColorDark: Colors.black,
    highlightColor: AppThemeColors.primary,
    scaffoldBackgroundColor: AppThemeColors.lightBackground,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(AppThemeColors.lightText),
      ),
    ),
    textTheme: const TextTheme(
      titleSmall: TextStyle(color: AppThemeColors.lightText),
      bodyLarge: TextStyle(color: AppThemeColors.lightText),
      bodyMedium: TextStyle(color: AppThemeColors.lightText),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppThemeColors.lightPrimary,
      foregroundColor: AppThemeColors.lightText,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(color: AppThemeColors.lightText),
      hintStyle: TextStyle(color: AppThemeColors.lightText),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFF6F6F6),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFF6F6F6),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFF6F6F6),
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppThemeColors.lightIconNavigation,
      unselectedItemColor: AppThemeColors.lightPrimary,
      backgroundColor: AppThemeColors.lightBackground,
    ),
    primaryIconTheme: const IconThemeData(color: AppThemeColors.lightText),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xFFD9D9D9),
    highlightColor: AppThemeColors.darkAccent,
    primaryColorDark: AppThemeColors.darkText,
    scaffoldBackgroundColor: AppThemeColors.darkBackground,
    textTheme: const TextTheme(
      titleSmall: TextStyle(color: AppThemeColors.lightText),
      bodyLarge: TextStyle(color: AppThemeColors.lightText),
      bodyMedium: TextStyle(color: AppThemeColors.lightText),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppThemeColors.darkPrimary,
      foregroundColor: AppThemeColors.darkText,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppThemeColors.darkBackground,
      selectedItemColor: AppThemeColors.darkIconNavigation,
      unselectedItemColor: AppThemeColors.unselectedItemColor,
    ),
    primaryIconTheme: const IconThemeData(color: AppThemeColors.darkText),
  );
}
