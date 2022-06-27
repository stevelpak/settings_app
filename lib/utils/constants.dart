import 'package:flutter/material.dart';

Color backgroundColor = const Color(0xFF1C1C23);
Color appColor = const Color(0xFFA2A2B5);

TextStyle kTextStyle(
    {Color? color,
    double size = 14,
    FontWeight fontWeight = FontWeight.w500,
    double? letterSpacing,
    double? height}) {
  return TextStyle(
      color: color ?? Colors.white,
      fontSize: size,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height);
}
