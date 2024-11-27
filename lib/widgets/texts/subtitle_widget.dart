import 'package:flutter/material.dart';

class SubtitleWidget extends StatelessWidget {
  final String label;
  final double fontSize;
  final FontStyle fontStyle;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final Color? color;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final int? maxLines;
  final TextAlign? textAlign;

  const SubtitleWidget({
    super.key,
    required this.label,
    this.fontSize = 18,
    this.fontStyle = FontStyle.normal,
    this.fontWeight,
    this.fontFamily,
    this.color,
    this.overflow,
    this.decoration = TextDecoration.none,
    this.maxLines,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: fontSize,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
        decoration: decoration,
      ),
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
