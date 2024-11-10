import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.images,
    this.width,
    this.height,
    required this.borderRadius,
  });
  final String images;
  final double? width;
  final double? height;
  final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Image.network(
        images,
        fit: BoxFit.cover,
        width: width,
        height: height,
      ),
    );
  }
}
