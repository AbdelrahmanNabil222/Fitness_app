import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ExercisesPageController extends GetxController {
  ExercisesPageController({
    required this.doc1,
    required this.subcollection1,
    required this.doc2,
  });
  final String doc1;
  final String subcollection1;
  final String doc2;

  //get exercises data
  List data = [];
  getdata() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('Workout')
        .doc(doc1)
        .collection(subcollection1)
        .doc(doc2)
        .collection('exercises')
        .orderBy('number', descending: false)
        .get();

    data.addAll(querySnapshot.docs);
    update();
  }

  //start btn of exercise is clicked
  startbtnClicked(var id) {
    CollectionReference colorr = FirebaseFirestore.instance
        .collection('Workout')
        .doc(doc1)
        .collection(subcollection1)
        .doc(doc2)
        .collection('colors');

    colorr.doc(id).update({
      'white': '4278539927',
      'black': '4294967295',
      'grey': '4294967295',
      'start': 'Done'
    });
  }

  // reset colors exercises btn clicked, which make the all colors of all exercises return to main color
  resetExercisescolors() async {
    var collection = FirebaseFirestore.instance
        .collection('Workout')
        .doc(doc1)
        .collection(subcollection1)
        .doc(doc2)
        .collection('colors');
    var querySnapshots = await collection
        .where('id', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .get();
    for (var doc in querySnapshots.docs) {
      await doc.reference.update({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
      });
    }
  }

  @override
  void onInit() {
    getdata();
    super.onInit();
  }
}
