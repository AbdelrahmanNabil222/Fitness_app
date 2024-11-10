import 'package:fitness_app/Controller/beginner%20containers%20of%20LVB%20Controller.dart';
import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:fitness_app/View/Widgets/CustomPositioned.dart';
import 'package:fitness_app/View/Widgets/customnetworkimage.dart';
import 'package:fitness_app/View/Widgets/customPowerImage.dart';
import 'package:fitness_app/View/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BeginnerContainerofHome extends StatelessWidget {
  const BeginnerContainerofHome({super.key});

  @override
  Widget build(BuildContext context) {
    // final BeginnerContainersOfLVBController controllerr = Get.find();
    return GetBuilder<BeginnerContainersOfHomeController>(
        builder: (controller) => (controller.isloading == true)
            ? Container(
                margin: const EdgeInsets.symmetric(vertical: 50),
                child: CustomText(
                  fontSize: 16,
                  color: AppColors.black,
                  text: 'Loading....',
                  textAlign: TextAlign.center,
                ),
              )
            : Container(
                child: SizedBox(
                  height: 145,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.beginnerData.length,
                      itemBuilder: (context, i) {
                        return InkWell(
                          onTap: () async {
                            //go to exercises page
                            controller.goToExercisespage(
                                controller.beginnerData[i]['Title'],
                                controller.beginnerData[i]['exercises number'],
                                controller.beginnerData[i]['minutes number'],
                                'beginner',
                                'beginner trainer',
                                controller.beginnerData[i].id,
                                controller.beginnerData[i]['image']);
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(8, 0, 1, 0),
                            child: Stack(
                              children: [
                                CustomNetworkImage(
                                    borderRadius: BorderRadius.circular(25),
                                    height: 145,
                                    width: 320,
                                    images: controller.beginnerData[i]
                                        ['image']),
                                //the power icon
                                CustomPositioned(
                                  left: 15,
                                  top: 12,
                                  child: CustomPowerImage(),
                                ),
                                CustomPositioned(
                                  top: 47,
                                  left: 18,
                                  child: CustomText(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.white,
                                    text:
                                        '${controller.beginnerData[i]['Title']}',
                                  ),
                                ),
                                CustomPositioned(
                                  top: 79,
                                  left: 24,
                                  child: Row(
                                    children: [
                                      CustomText(
                                          text:
                                              '${controller.beginnerData[i]['minutes number']}',
                                          color: AppColors.white),
                                      CustomText(
                                          text:
                                              '${controller.beginnerData[i]['exercises number'].toString()}',
                                          color: AppColors.white)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ));
  }
}
