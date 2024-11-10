import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:fitness_app/View/Screens/restpage.dart';
import 'package:fitness_app/View/Widgets/customElevatedButton.dart';
import 'package:fitness_app/View/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomRepswithBtn extends StatelessWidget {
  const CustomRepswithBtn({super.key, required this.rep});
  final String rep;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      child: Column(
        children: [
          CustomText(
            text: rep,
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: AppColors.black,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          CustomElevatedButton(
              onPressed: () {
                Get.off(() => RestPage());
              },
              text: 'Done',
              padding: EdgeInsets.fromLTRB(60, 8, 60, 8),
              fontSize: 20,
              color: AppColors.blue,
              textcolor: AppColors.white),
        ],
      ),
    );
  }
}
