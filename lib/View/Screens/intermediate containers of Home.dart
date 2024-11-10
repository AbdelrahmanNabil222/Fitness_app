import 'package:fitness_app/Controller/intermediate%20containers%20of%20LVB%20Controller.dart';
import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:fitness_app/View/Widgets/CustomPositioned.dart';
import 'package:fitness_app/View/Widgets/customnetworkimage.dart';
import 'package:fitness_app/View/Widgets/customPowerImage.dart';
import 'package:fitness_app/View/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntermediateContainersOfHome extends StatelessWidget {
  const IntermediateContainersOfHome({super.key});

  @override
  Widget build(BuildContext context) {
    //  final IntermediateContainersOfLVBController controller = Get.find();
    return GetBuilder<IntermediateContainersOfHomeController>(
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
            : SizedBox(
                height: 145,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.intermediateData.length,
                    itemBuilder: (context, i) {
                      return InkWell(
                        onTap: () {
                          //go to exercises page
                          controller.goToExercisespage(
                              controller.intermediateData[i]['Title'],
                              controller.intermediateData[i]['minutes number'],
                              controller.intermediateData[i]
                                  ['exercises number'],
                              'intermediate',
                              'intermediate trainer',
                              controller.intermediateData[i].id,
                              controller.intermediateData[i]['image']);
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(8, 0, 1, 0),
                          child: Stack(
                            children: [
                              CustomNetworkImage(
                                borderRadius: BorderRadius.circular(25),
                                images: controller.intermediateData[i]['image'],
                                height: 145,
                                width: 320,
                              ),
                              const CustomPositioned(
                                left: 15,
                                top: 12,
                                child: Row(
                                  children: [
                                    //the two power icons
                                    CustomPowerImage(),
                                    CustomPowerImage(),
                                  ],
                                ),
                              ),
                              CustomPositioned(
                                top: 47,
                                left: 18,
                                child: CustomText(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.white,
                                  text:
                                      '${controller.intermediateData[i]['Title']}',
                                ),
                              ),
                              CustomPositioned(
                                top: 79,
                                left: 24,
                                child: Row(
                                  children: [
                                    CustomText(
                                        text:
                                            '${controller.intermediateData[i]['minutes number']}',
                                        color: AppColors.white),
                                    CustomText(
                                        text:
                                            '${controller.intermediateData[i]['exercises number']}',
                                        color: AppColors.white)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ));
  }
}
