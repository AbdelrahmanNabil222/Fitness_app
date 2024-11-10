import 'package:flutter/material.dart';

class CustomPositioned extends StatelessWidget {
  const CustomPositioned(
      {super.key, required this.child, this.top, this.left, this.right});
  final Widget child;
  final double? top;
  final double? left;
  final double? right;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: child,
      top: top,
      left: left,
      right: right,
    );
  }
}
