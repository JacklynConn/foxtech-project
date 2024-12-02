import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle titleStyle(BuildContext context) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Theme.of(context).textTheme.titleLarge?.color,
    );
  }
}