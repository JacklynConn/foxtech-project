import 'package:flutter/material.dart';

import 'app_color.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.lightPrimary,
    highlightColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    textTheme: const TextTheme(
      bodySmall: TextStyle(color: AppColors.lightText),
      bodyLarge: TextStyle(color: AppColors.lightText),
      bodyMedium: TextStyle(color: AppColors.lightText),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightPrimary,
      foregroundColor: AppColors.lightText,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.lightIconNavigation,
      unselectedItemColor: AppColors.lightPrimary,
      backgroundColor: AppColors.lightBackground,
    ),
    primaryIconTheme: const IconThemeData(color: AppColors.lightText),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.darkPrimary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    highlightColor: AppColors.darkAccent,
    textTheme: const TextTheme(
      titleSmall: TextStyle(color: AppColors.dartGreyText),
      bodyLarge: TextStyle(color: AppColors.darkText),
      bodyMedium: TextStyle(color: AppColors.darkText),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkPrimary,
      foregroundColor: AppColors.darkText,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkBackground,
      selectedItemColor: AppColors.darkIconNavigation,
      unselectedItemColor: AppColors.unselectedItemColor,
    ),
    primaryIconTheme: const IconThemeData(color: AppColors.darkText),
  );
}
