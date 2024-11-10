import 'package:custom_timer/custom_timer.dart';
import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:fitness_app/View/Widgets/customElevatedButton.dart';
import 'package:fitness_app/View/Widgets/customText.dart';
import 'package:flutter/material.dart';

class CustomTimerWithBtn extends StatefulWidget {
  CustomTimerWithBtn({super.key, required this.rep});
  final int rep;
  @override
  State<CustomTimerWithBtn> createState() => _CustomTimerWithBtnState();
}

class _CustomTimerWithBtnState extends State<CustomTimerWithBtn>
    with SingleTickerProviderStateMixin {
  late CustomTimerController _controller = CustomTimerController(
      vsync: this,
      begin: Duration(seconds: widget.rep),
      end: const Duration(seconds: 00),
      initialState: CustomTimerState.reset,
      interval: CustomTimerInterval.milliseconds);
  @override
  void initState() {
    _controller.start();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTimer(
        controller: _controller,
        builder: (state, remaining) {
          // Build the widget you want!
          return Container(
            height: 149,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //   Text("${state.name}", style: TextStyle(fontSize: 24.0)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "00:",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                      CustomText(
                        text: "${remaining.seconds}",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomElevatedButton(
                          onPressed: () {
                            _controller.start();
                          },
                          text: 'Resume',
                          padding: const EdgeInsets.fromLTRB(35, 8, 35, 8),
                          fontSize: 20,
                          color: AppColors.blue,
                          textcolor: AppColors.white),
                      const SizedBox(
                        width: 3,
                      ),
                      CustomElevatedButton(
                          onPressed: () {
                            if (widget.rep <= 14) {
                              print('ddddddddddddddddddddddddd');
                            }
                            _controller.pause();
                          },
                          text: 'PAUSE',
                          padding: const EdgeInsets.fromLTRB(40, 8, 40, 8),
                          fontSize: 20,
                          color: AppColors.blue,
                          textcolor: AppColors.white),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
