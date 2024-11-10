import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:flutter/material.dart';

class CustomPowerImage extends StatelessWidget {
  const CustomPowerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/fire.png',
      color: AppColors.blue,
      height: 16,
      width: 16,
    );
  }
}
