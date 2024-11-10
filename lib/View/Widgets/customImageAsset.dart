import 'package:flutter/material.dart';

class CustomImageAsset extends StatelessWidget {
  const CustomImageAsset(
      {super.key,
      required this.images,
      this.width,
      this.height,
      required this.borderRadius});
  final String images;
  final double? width;
  final double? height;
  final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Image.asset(
        images,
        fit: BoxFit.cover,
        width: width,
        height: height,
      ),
    );
  }
}
