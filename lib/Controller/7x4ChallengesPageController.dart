import 'package:get/get.dart';

class ChallengesPageController extends GetxController {
  int currentstep = 0;
  //on step tapped
  OnStepTapped(int newindex) {
    currentstep = newindex;
    update();
  }
}
