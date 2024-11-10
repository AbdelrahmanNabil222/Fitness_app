import 'package:fitness_app/Controller/7x4%20challengesController.dart';
import 'package:fitness_app/Controller/7x4ChallengesPageController.dart';
import 'package:fitness_app/Controller/advanced%20containers%20of%20LVB%20Controller.dart';
import 'package:fitness_app/Controller/beginner%20containers%20of%20LVB%20Controller.dart';
import 'package:fitness_app/Controller/home%20Controller.dart';
import 'package:fitness_app/Controller/intermediate%20containers%20of%20LVB%20Controller.dart';
import 'package:fitness_app/Controller/loginPageController.dart';
import 'package:get/get.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BeginnerContainersOfHomeController(), fenix: true);
    Get.lazyPut(() => IntermediateContainersOfHomeController(), fenix: true);
    Get.lazyPut(() => AdvancedContainerofHomeController(), fenix: true);
    Get.lazyPut(() => ChanllengeContainerOfHomeController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => ChallengesPageController(), fenix: true);
    Get.lazyPut(() => LoginINController(), fenix: true);
  }
}
