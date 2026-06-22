import 'package:flutter/material.dart';

class StaatlichesText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final double height;
  final TextAlign textAlign;
  final double letterSpacing;
  const StaatlichesText({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 24,
    this.textAlign = TextAlign.center,
    this.color = Colors.white,
    this.letterSpacing = 1.0,
    this.height = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Staatliches',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
        height: height,
      ),

      textAlign: textAlign,
    );
  }
}

class RobotoText extends StatelessWidget {
  final String text;
  final Color color;

  final int? maxLines;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final double fontSize;
  final TextAlign textAlign;
  final double letterSpacing;
  final double height;
  final TextOverflow? overflow;
  const RobotoText({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 24,
    this.textAlign = TextAlign.left,
    this.color = Colors.white,
    this.letterSpacing = 0.0,
    this.height = 1.3,
    this.fontStyle = FontStyle.normal,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
        height: height,
        fontStyle: fontStyle,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

class RobotoCondensedText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final double letterSpacing;
  final TextAlign textAlign;
  const RobotoCondensedText({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 24,
    this.textAlign = TextAlign.center,
    this.color = Colors.white,
    this.letterSpacing = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
      ),
      textAlign: textAlign,
    );
  }
}
