import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:flutter/material.dart';

class CustomContainerofStepperContent extends StatelessWidget {
  const CustomContainerofStepperContent({
    super.key,
    required this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(0, 9, 0, 9),
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          ...List.generate(
              7,
              (i) => InkWell(
                    onTap: onTap,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(14.7, 7, 14.7, 7),
                      margin: EdgeInsets.fromLTRB(11, 10, 15, 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.blue),
                          //color: Colors.grey,
                          borderRadius: BorderRadius.circular(60)),
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: 19,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),
        ],
      ),
    );
  }
}
