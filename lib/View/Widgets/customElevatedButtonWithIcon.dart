import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtonWithIcon extends StatelessWidget {
  const CustomElevatedButtonWithIcon(
      {super.key, required this.icon, required this.label, this.onPressed});
  final void Function()? onPressed;
  final Widget icon;
  final Widget label;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: label,
      style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(15, 5, 15, 5)),
          backgroundColor: MaterialStateProperty.all(AppColors.white8)),
    );
  }
}
