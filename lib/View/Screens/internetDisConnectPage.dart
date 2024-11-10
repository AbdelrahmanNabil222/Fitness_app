import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:fitness_app/View/Widgets/customElevatedButton.dart';
import 'package:fitness_app/View/Widgets/customImageAsset.dart';
import 'package:fitness_app/View/Widgets/customText.dart';
import 'package:flutter/material.dart';

class InterNetDisconnectPage extends StatelessWidget {
  const InterNetDisconnectPage({super.key, required this.onpressed});
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white5,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageAsset(
                images: 'images/internet.PNG',
                borderRadius: BorderRadius.circular(0)),
            const SizedBox(height: 50),
            CustomText(
              text:
                  'No internet connection found, check your connection and try again.',
              fontSize: 15,
              color: AppColors.black,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            CustomElevatedButton(
                onPressed: onpressed,
                text: 'Reload',
                padding: const EdgeInsets.fromLTRB(40, 12, 40, 12)),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
