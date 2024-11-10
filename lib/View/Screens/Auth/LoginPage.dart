import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fitness_app/Controller/loginPageController.dart';
import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:fitness_app/View/Screens/internetDisConnectPage.dart';
import 'package:fitness_app/View/Widgets/customElevatedButtonWithIcon.dart';
import 'package:fitness_app/View/Widgets/customImageAsset.dart';
import 'package:fitness_app/View/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginINController>(builder: (controller) {
      return Scaffold(
        backgroundColor: AppColors.black1,
        body: StreamBuilder<ConnectivityResult>(
            stream: Connectivity().onConnectivityChanged,
            builder: (context, snapshot) {
              return (controller.connectionResult == ConnectivityResult.none ||
                      snapshot.data == ConnectivityResult.none)
                  ? InterNetDisconnectPage(
                      onpressed: () {
                        Get.offAll(() => LoginPage());
                      },
                    )
                  : SafeArea(
                      child: Center(
                      child: Column(
                        children: [
                          CustomImageAsset(
                            images: 'images/6.jpg',
                            width: double.infinity,
                            height: 400,
                            borderRadius: BorderRadius.circular(0),
                          ),
                          SizedBox(height: 14),
                          CustomText(
                              text: 'Welcome to Home WorkOut',
                              color: AppColors.white1,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          SizedBox(
                            height: 3,
                          ),
                          CustomText(
                              text: 'Login to continue',
                              color: AppColors.white2),
                          SizedBox(
                            height: 140,
                          ),
                          CustomElevatedButtonWithIcon(
                            onPressed: () {
                              //sign in with google
                              controller.signInWithGoogle();
                            },
                            icon: CustomImageAsset(
                                height: 25,
                                width: 25,
                                images: 'images/search.png',
                                borderRadius: BorderRadius.circular(0)),
                            label: CustomText(
                              text: 'Login',
                              color: AppColors.black,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ));
            }),
      );
    });
  }
}
