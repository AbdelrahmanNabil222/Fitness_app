import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ChanllengeContainerOfHomeController extends GetxController {
  //get Chanllenge Container Of Home Controller data
  bool isloading = true;
  List data = [];
  getdata() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('7x4Challenges').get();
    data.addAll(querySnapshot.docs);
    isloading = false;
    update();
  }

  @override
  void onInit() {
    getdata();
    super.onInit();
  }
}
