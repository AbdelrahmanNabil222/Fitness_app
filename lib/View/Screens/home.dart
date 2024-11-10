import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fitness_app/Controller/home%20Controller.dart';
import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:fitness_app/View/Screens/7x4%20ChanllengeContainerOfHome.dart';
import 'package:fitness_app/View/Screens/advanced%20containers%20of%20Home.dart';
import 'package:fitness_app/View/Screens/beginner%20containers%20of%20Home.dart';
import 'package:fitness_app/View/Screens/intermediate%20containers%20of%20Home.dart';
import 'package:fitness_app/View/Screens/internetDisConnectPage.dart';
import 'package:fitness_app/View/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //final HomeController controller = Get.find();
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.black),
          backgroundColor: AppColors.white,
          title: CustomText(
              text: 'HOME WORKOUT',
              fontSize: 21.6,
              fontWeight: FontWeight.bold,
              color: AppColors.black),
          actions: [
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: CustomText(
                          text: 'LogOut',
                          color: AppColors.white,
                        ),
                        onTap: () {
                          Get.defaultDialog(
                              title: 'Are you sure?',
                              content: CustomText(
                                  text: 'LogOut', color: AppColors.white),
                              onConfirm: () {
                                //logout
                                controller.logout();
                              },
                              onCancel: () {
                                Get.back();
                              });
                        },
                      )
                    ])
          ],
        ),
        body: StreamBuilder<ConnectivityResult>(
            stream: Connectivity().onConnectivityChanged,
            builder: (context, snapshot) {
              return (controller.connectionResult == ConnectivityResult.none ||
                      snapshot.data == ConnectivityResult.none)
                  ? InterNetDisconnectPage(onpressed: () {
                      Get.off(() => Home());
                    })
                  : SafeArea(
                      child: Center(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(13, 8, 0, 7),
                            child: CustomText(
                              text: '4x7 CHALLENGE',
                              fontWeight: FontWeight.bold,
                              color: AppColors.black,
                              fontSize: 15,
                            ),
                          ),
                          //4x7 challenge container
                          ChanllengeContainerOfHome(),

                          Container(
                            margin: EdgeInsets.fromLTRB(10, 16, 0, 3.2),
                            child: CustomText(
                                text: 'BEGINNER',
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: AppColors.black),
                          ),
                          // beginner Level
                          BeginnerContainerofHome(),
                          const SizedBox(
                            height: 3,
                          ),

                          Container(
                              margin: EdgeInsets.fromLTRB(10, 16, 0, 3.2),
                              child: CustomText(
                                  text: 'INTERMEDIATE',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: AppColors.black)),
                          // intermediate Level
                          IntermediateContainersOfHome(),
                          const SizedBox(
                            height: 3,
                          ),

                          Container(
                              margin: EdgeInsets.fromLTRB(10, 16, 0, 3.2),
                              child: CustomText(
                                  text: 'ADVANCED',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: AppColors.black)),
                          // advanced Level
                          AdvancedContainerofHome(),
                          const SizedBox(
                            height: 18,
                          )
                        ],
                      ),
                    ));
            }),
      );
    });
  }
}
