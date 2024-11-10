import 'package:custom_timer/custom_timer.dart';
import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:fitness_app/View/Widgets/customElevatedButton.dart';
import 'package:fitness_app/View/Widgets/customImageAsset.dart';
import 'package:fitness_app/View/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestPage extends StatefulWidget {
  const RestPage({
    super.key,
  });

  @override
  State<RestPage> createState() => _RestPageState();
}

class _RestPageState extends State<RestPage>
    with SingleTickerProviderStateMixin {
  late CustomTimerController controller = CustomTimerController(
      vsync: this,
      begin: Duration(seconds: 31),
      end: const Duration(seconds: 00),
      initialState: CustomTimerState.reset,
      interval: CustomTimerInterval.milliseconds);
  @override
  void initState() {
    controller.start();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white6,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Container(
              color: AppColors.white,
              child: CustomImageAsset(
                borderRadius: BorderRadius.circular(0),
                images: 'images/relax.jpg',
                width: double.infinity,
                height: 260,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: CustomText(
                  text: 'relax',
                  fontWeight: FontWeight.bold,
                  color: AppColors.lightbrown,
                  fontSize: 15),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              margin: const EdgeInsets.only(right: 7),
              child: CustomText(
                text: 'it\'s time to relax',
                color: AppColors.brown1,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 60),
            CustomText(
              text: 'REST',
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "00:",
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: AppColors.lightbrown1,
                ),
                CustomTimer(
                    controller: controller,
                    builder: (state, remaining) {
                      return CustomText(
                          text: "${remaining.seconds}",
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: AppColors.brown2);
                    }),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomElevatedButton(
              onPressed: () {
                //add minutes and start the counting after adding
                controller.add(const Duration(seconds: 10));
                controller.start();
              },
              textcolor: AppColors.white,
              color: AppColors.black2,
              text: '+10s',
              padding: const EdgeInsets.fromLTRB(100, 9, 100, 9),
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 3,
            ),
            CustomElevatedButton(
              onPressed: () {
                Get.back();
              },
              textcolor: AppColors.blue2,
              text: 'SKIP',
              padding: const EdgeInsets.fromLTRB(100, 9, 100, 9),
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      )),
    );
  }
}
