import 'package:fitness_app/View/Widgets/CustomtTimerWithBtn.dart';
import 'package:fitness_app/View/Widgets/customRepsWithBtn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TheExerciseStartedPageController extends GetxController {
  TheExerciseStartedPageController({
    required this.rep,
    required this.workoutname,
  });
  final String workoutname;
  final String rep;
  Widget? widgett;
  timeorRepsfunction() {
    // if the workout that i clicked on it is one of these names
    if (workoutname == 'JUMPING JACK' ||
        workoutname == 'JUMPING JACKS' ||
        workoutname == 'PLANK' ||
        workoutname == 'COBRA STRETCH' ||
        workoutname == 'SPINE LUMBAR TWIST STRETCH LEFT' ||
        workoutname == 'SPINE LUMBAR TWIST STRETCH RIGHT' ||
        workoutname == 'ARM RAISES' ||
        workoutname == 'SIDE ARM RAISES' ||
        workoutname == 'ARM CIRCLES COUNTERCLICKWISE' ||
        workoutname == 'CHEST PRESS PULSE' ||
        workoutname == 'PUNCHES' ||
        workoutname == 'TRICEPS STRETCH LEFT' ||
        workoutname == 'TRICEPS STRETCH RIGHT' ||
        workoutname == 'STANDING BICEPS STRETCH LEFT' ||
        workoutname == 'STANDING BICEPS STRETCH RIGHT' ||
        workoutname == "LYING BUTTERFLY STRETCH" ||
        workoutname == 'COBRA STRETCH' ||
        workoutname == 'CHEST STRETCH' ||
        workoutname == 'SIDE HOP' ||
        workoutname == 'LEFT QUAD STRETCH WITH WALL' ||
        workoutname == 'RIGHT QUADS STRETCH WITH WALL' ||
        workoutname == 'RIGHT QUAD STRETCH WITH WALL' ||
        workoutname == 'KNEE TO CHEST STRECH LEFT' ||
        workoutname == 'KNEE TO CHEST STRETCH LEFT' ||
        workoutname == 'KNEE TO CHEST STRETCH RIGHT ' ||
        workoutname == 'KNEE TO CHEST STRECH RIGHT' ||
        workoutname == ' KNEE TO CHEST STRETCH RIGHT' ||
        workoutname == ' KNEE TO CHEST STRETCH LEFT' ||
        workoutname == 'CALF STRECH LEFT' ||
        workoutname == 'CALF STRETCH LEFT' ||
        workoutname == 'CALF STRETCH RIGHT' ||
        workoutname == 'SIDE-LYING FLOOR STRETCH LEFT' ||
        workoutname == 'SIDE-LYING FLOOR STRETCH RIGHT' ||
        workoutname == 'SIDE LYING FLOOR STRETCH RIGHT' ||
        workoutname == 'ARM SCISSORS' ||
        workoutname == 'SIDE ARM RAISE' ||
        workoutname == 'POSE' ||
        workoutname == 'CHILD\'S POSE' ||
        workoutname == 'SIDE PLANK RIGHT' ||
        workoutname == 'SIDE PLANK LEFT' ||
        workoutname == 'ARM CIRCLES CLOCKWISE' ||
        workoutname == 'ALTERNATING HOOKS' ||
        workoutname == 'SKIPPING WITHOUT ROPE' ||
        workoutname == 'SHOULDER STRETCH' ||
        workoutname == 'CHEST STRETCH' ||
        workoutname == 'COBRA STRETCH' ||
        workoutname == 'CHEST STRESH' ||
        workoutname == 'WALL SIT' ||
        workoutname == 'MODIFIED PUSH-UP LOW HOLD' ||
        workoutname == 'ARM CIRCLES COUNTERCLOCKWISE' ||
        workoutname == 'WALL PUSH-UPS' ||
        workoutname == 'ARM CIRCLES' ||
        workoutname == 'CHEST PRESS PULSE') {
      // the widget is Custom timer with two button
      widgett = CustomTimerWithBtn(
        rep: int.parse(rep),
      );
    }
    // if the workout that i clicked on it is Not one of these names

    else {
      //the widget is Custom Reps with Btn
      widgett = CustomRepswithBtn(rep: rep);
    }
    update();
  }

  @override
  void onInit() {
    timeorRepsfunction();
    super.onInit();
  }
}
