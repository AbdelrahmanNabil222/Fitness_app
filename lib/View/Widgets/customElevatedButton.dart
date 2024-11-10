import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.color = Colors.white,
      this.textcolor = Colors.blue,
      required this.padding,
      this.fontSize,
      this.fontWeight});
  final void Function()? onPressed;
  final String text;
  final Color color;
  final Color textcolor;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: textcolor, fontSize: fontSize, fontWeight: fontWeight),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          padding: MaterialStateProperty.all(padding)),
    );
  }
}
