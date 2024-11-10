import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.color,
    this.fontWeight,
    this.fontSize,
    this.height,
    this.textAlign = TextAlign.start,
  });
  final String text;
  final Color color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign textAlign;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          height: height,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize),
    );
  }
}
