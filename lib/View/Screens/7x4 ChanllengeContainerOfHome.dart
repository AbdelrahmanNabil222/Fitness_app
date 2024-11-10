import 'package:fitness_app/Controller/7x4%20challengesController.dart';
import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:fitness_app/View/Screens/7x4ChallengePage.dart';
import 'package:fitness_app/View/Widgets/CustomPositioned.dart';
import 'package:fitness_app/View/Widgets/customnetworkimage.dart';
import 'package:fitness_app/View/Widgets/customElevatedButton.dart';
import 'package:fitness_app/View/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChanllengeContainerOfHome extends StatelessWidget {
  const ChanllengeContainerOfHome({super.key});

  @override
  Widget build(BuildContext context) {
    //final ChallengesContainerController controller = Get.find();
    return Column(
      children: [
        GetBuilder<ChanllengeContainerOfHomeController>(
            builder: (controller) => (controller.isloading == true)
                ? Container(
                    margin: EdgeInsets.symmetric(vertical: 110),
                    child: CustomText(
                      fontSize: 16,
                      color: AppColors.black,
                      text: 'Loading....',
                      textAlign: TextAlign.center,
                    ),
                  )
                : SizedBox(
                    height: 270,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.data.length,
                        itemBuilder: (context, i) {
                          return Container(
                            margin: const EdgeInsets.fromLTRB(8.7, 0, 0, 0),
                            child: Stack(
                              children: [
                                CustomNetworkImage(
                                  borderRadius: BorderRadius.circular(25),
                                  images: controller.data[i]['image'],
                                  width: 300,
                                  height: 270,
                                ),
                                CustomPositioned(
                                  top: 25,
                                  left: 14,
                                  right: 15,
                                  child: CustomText(
                                      text: '${controller.data[i]['Title']}',
                                      height: 1.1,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.white),
                                ),
                                CustomPositioned(
                                  top: 152,
                                  left: 14,
                                  right: 10,
                                  child: CustomText(
                                      text:
                                          '${controller.data[i]['description']}',
                                      fontSize: 12,
                                      color: AppColors.white),
                                ),
                                CustomPositioned(
                                    top: 214,
                                    left: 25,
                                    child: CustomElevatedButton(
                                      padding: const EdgeInsets.fromLTRB(
                                          95, 0, 95, 0),
                                      onPressed: () async {
                                        Get.to(() => ChallengesPage());
                                      },
                                      text: 'Start now',
                                    ))
                              ],
                            ),
                          );
                        }),
                  )),
      ],
    );
  }
}
