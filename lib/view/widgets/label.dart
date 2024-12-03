import 'package:flutter/material.dart';

class Onest {
  static const String thin = "thin";
  static const String medium = "medium";
  static const String bold = "bold";
  static const String extraBold = "extra-bold";
  static const String semiBold = "semi-bold";
  static const String light = "light";
  static const String extraLight = "extra-light";
  static const String regular = "regular";
  static const String black = "black";
}

class AppColor {
  static const Color dark = Color(0xFF0C0C0C);
  static const Color light = Color(0xFFF4F4F4);
}

class Label extends StatelessWidget {
  const Label({
    super.key,
    required this.text,
    this.fontFamily = Onest.regular,
    this.fontSize = 15,
    this.color = AppColor.dark,
  });

  final String text;
  final String? fontFamily;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: lablStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}

TextStyle lablStyle({
  final String? fontFamily = Onest.regular,
  final double? fontSize = 15,
  final Color? color = AppColor.dark,
}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    color: color,
  );
}
