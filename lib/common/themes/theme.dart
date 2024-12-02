import 'package:flutter/material.dart';
import 'colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: lBackgroundColor,
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
    primary: lPrimaryColor,
    onPrimary: lOnPrimaryColor,
    secondary: lBackgroundColor,
    surface: lBackgroundColor,
    onSurface: lOnContainerColor,
    primaryContainer: lOnContainerColor,
    shadow: lGrey,
  ),
  cardColor: Colors.white,
  textTheme: TextTheme(
    titleLarge: TextStyle(color: lBlack),
    titleMedium: TextStyle(color: lBlack),
    titleSmall: TextStyle(color: lGrey, fontSize: 18),
    bodySmall: TextStyle(color: lGrey, fontSize: 14),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    actionsIconTheme: IconThemeData(color: lBlack),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: lPrimaryColor,
    unselectedItemColor: lGrey,
    backgroundColor: lBackgroundColor,
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: lPrimaryColor,
    onPrimary: lOnPrimaryColor,
    secondary: lBlack,
    onSurface: lOnContainerColor,
    primaryContainer: lOnContainerColor,
    shadow: lGrey,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(color: lWhite),
    titleMedium: TextStyle(color: lWhite),
    titleSmall: const TextStyle(color: Colors.white),
    bodySmall: TextStyle(color: lGrey, fontSize: 14),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    actionsIconTheme: IconThemeData(color: Colors.white),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: lPrimaryColor,
    unselectedItemColor: lGrey,
    backgroundColor: Colors.black,
  ),
);
