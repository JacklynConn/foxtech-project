import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle titleX({double size = 64, Color color = Colors.black}) {
    return TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold);
  }

  static TextStyle title1({double size = 32, Color color = Colors.black}) {
    return TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold);
  }

  static TextStyle title3({double size = 18, Color color = Colors.black}) {
    return TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w600);
  }

  static TextStyle regular1({
    double size = 16,
    Color color = Colors.black,
    FontWeight weight = FontWeight.normal,
    String? ellipsis,
  }) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
      overflow: TextOverflow.ellipsis,
    );
  }

  static TextStyle medium(
      {double size = 16, Color color = Colors.black, String? ellipsis}) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    );
  }

  static TextStyle bold({double size = 16, Color color = Colors.black}) {
    return TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold);
  }

  static TextStyle appTitle({double size = 18, Color color = Colors.black}) {
    return TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w600);
  }

  static TextStyle snackBar({double size = 18, Color color = Colors.white}) =>
      medium(size: size, color: color);
}
