import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness_app/View/Screens/exercisesPage.dart';
import 'package:get/get.dart';

class IntermediateContainersOfHomeController extends GetxController {
  // go to exercises page
  goToExercisespage(
      String exerciseName,
      String minutesnumber,
      var exercisesnumber,
      String doc1,
      String subcollection1,
      String doc2,
      String image) {
    Get.to(() => ExercisesPage(
          exerciseName: exerciseName,
          minutesnumber: minutesnumber,
          exercisesnumber: exercisesnumber,
          doc1: doc1,
          subcollection1: subcollection1,
          doc2: doc2,
          image: image,
        ));
  }

// get intermediate level data
  bool isloading = true;
  List intermediateData = [];
  getdata() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('Workout')
        .doc('intermediate')
        .collection('intermediate trainer')
        .get();
    intermediateData.addAll(querySnapshot.docs);
    isloading = false;
    update();
  }

  @override
  void onInit() {
    getdata();
    super.onInit();
  }
}
