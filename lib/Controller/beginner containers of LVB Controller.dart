import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness_app/View/Screens/exercisesPage.dart';
import 'package:get/get.dart';

class BeginnerContainersOfHomeController extends GetxController {
  // go to exercises page
  goToExercisespage(
      String exerciseName,
      var exercisesnumber,
      String minutesnumber,
      String doc1,
      String subcollection1,
      String doc2,
      String image) {
    Get.to(() => ExercisesPage(
          exerciseName: exerciseName,
          exercisesnumber: exercisesnumber,
          minutesnumber: minutesnumber,
          doc1: doc1,
          subcollection1: subcollection1,
          doc2: doc2,
          image: image,
        ));
  }

// get beginner level data
  List beginnerData = [];
  bool isloading = true;
  getdata() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('Workout')
        .doc('beginner')
        .collection('beginner trainer')
        .get();
    beginnerData.addAll(querySnapshot.docs);
    isloading = false;
    update();
  }

  @override
  void onInit() {
    getdata();
    super.onInit();
  }
}
