import 'package:fitness_app/Controller/advanced%20containers%20of%20LVB%20Controller.dart';
import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:fitness_app/View/Widgets/customnetworkimage.dart';
import 'package:fitness_app/View/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/View/Widgets/CustomPositioned.dart';
import 'package:fitness_app/View/Widgets/customPowerImage.dart';
import 'package:get/get.dart';

class AdvancedContainerofHome extends StatelessWidget {
  const AdvancedContainerofHome({super.key});
  @override
  Widget build(BuildContext context) {
    //  final AdvancedContainersOfLVBController controller = Get.find();
    return GetBuilder<AdvancedContainerofHomeController>(
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
                    itemCount: controller.advancedData.length,
                    itemBuilder: (context, i) {
                      return InkWell(
                        onTap: () {
                          //go to exercises page
                          controller.goToExercisespage(
                              controller.advancedData[i]['Title'],
                              controller.advancedData[i]['minutes number'],
                              controller.advancedData[i]['exercises number'],
                              'advanced',
                              'advanced trainer',
                              controller.advancedData[i].id,
                              controller.advancedData[i]['image']);
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(8, 0, 1, 0),
                          child: Stack(
                            children: [
                              CustomNetworkImage(
                                borderRadius: BorderRadius.circular(25),
                                images: controller.advancedData[i]['image'],
                                height: 145,
                                width: 320,
                              ),
                              const CustomPositioned(
                                left: 15,
                                top: 12,
                                child: Row(
                                  children: [
                                    //the three power icons
                                    CustomPowerImage(),
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
                                      '${controller.advancedData[i]['Title']}',
                                ),
                              ),
                              CustomPositioned(
                                top: 79,
                                left: 24,
                                child: Row(
                                  children: [
                                    CustomText(
                                        text:
                                            '${controller.advancedData[i]['minutes number']}',
                                        color: AppColors.white),
                                    CustomText(
                                        text:
                                            '${controller.advancedData[i]['exercises number']}',
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
