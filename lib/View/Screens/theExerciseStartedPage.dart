import 'package:fitness_app/Controller/theExerciseStartedPageController.dart';
import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:fitness_app/View/Screens/restpage.dart';
import 'package:fitness_app/View/Widgets/customImageAsset.dart';
import 'package:fitness_app/View/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class theExerciseStartedPage extends StatelessWidget {
  const theExerciseStartedPage({
    super.key,
    required this.workoutname,
    required this.rep,
  });
  final String workoutname;
  final String rep;

  @override
  Widget build(BuildContext context) {
    final TheExerciseStartedPageController controller = Get.put(
        TheExerciseStartedPageController(rep: rep, workoutname: workoutname));
    return GetBuilder<TheExerciseStartedPageController>(builder: (controllerr) {
      return Scaffold(
        body: SafeArea(
            child: Center(
          child: ListView(
            children: [
              CustomImageAsset(
                borderRadius: BorderRadius.circular(0),
                images: 'images/111.gif',
                width: double.infinity,
                height: 360,
              ),

              const SizedBox(height: 50),
              Container(
                height: 70,
                child: CustomText(
                  text: '$workoutname',
                  textAlign: TextAlign.center,
                  color: AppColors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              //this widget is the timer with buttons or reps with button its based on the workout name
              Container(child: controller.widgett),
              const SizedBox(
                height: 40,
              ),
              //   SizedBox(height: 31),
              Container(
                height: 50,
                color: AppColors.white7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          'back',
                          style:
                              TextStyle(fontSize: 15, color: AppColors.black),
                        )),
                    const SizedBox(
                      width: 110,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.off(() => const RestPage());
                      },
                      child: CustomText(
                          text: 'Skip', fontSize: 15, color: AppColors.black),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      );
    });
  }
}
