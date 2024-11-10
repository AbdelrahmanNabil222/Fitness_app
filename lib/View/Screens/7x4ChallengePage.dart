import 'package:fitness_app/Controller/7x4ChallengesPageController.dart';
import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:fitness_app/View/Widgets/customContainerofStepperContent.dart';
import 'package:fitness_app/View/Widgets/customImageAsset.dart';
import 'package:fitness_app/View/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChallengesPage extends StatelessWidget {
  const ChallengesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ChallengesPageController controller = Get.find();
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: Center(
        child: ListView(
          children: [
            Stack(
              children: [
                CustomImageAsset(
                  images: 'images/plankk.jpg',
                  borderRadius: BorderRadius.circular(0),
                  width: double.infinity,
                  height: 200,
                ),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppColors.blue,
                    ))
              ],
            ),
            GetBuilder<ChallengesPageController>(builder: (controllerr) {
              return Stepper(
                connectorColor: MaterialStateProperty.all(AppColors.blue),
                steps: [
                  Step(
                    title: CustomText(
                      text: 'WEEK 1',
                      color: AppColors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    content: CustomContainerofStepperContent(onTap: () {}),
                    isActive: controller.currentstep == 0,
                  ),
                  Step(
                      title: CustomText(
                        text: 'WEEK 2',
                        color: AppColors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      content: CustomContainerofStepperContent(
                        onTap: () {},
                      ),
                      isActive: controller.currentstep == 1),
                  Step(
                      title: CustomText(
                        text: 'WEEK 3',
                        color: AppColors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      content: CustomContainerofStepperContent(
                        onTap: () {},
                      ),
                      isActive: controller.currentstep == 2),
                  Step(
                      title: CustomText(
                        text: 'WEEK 4',
                        color: AppColors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      content: CustomContainerofStepperContent(
                        onTap: () {},
                      ),
                      isActive: controller.currentstep == 3),
                ],
                currentStep: controllerr.currentstep,
                onStepTapped: (int newindexx) {
                  controllerr.OnStepTapped(newindexx);
                },
              );
            })
          ],
        ),
      )),
    );
  }
}
