import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/View/Screens/Auth/LoginPage.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeController extends GetxController {
  //internet check
  var connectionResult;
  internetstatus() async {
    connectionResult = await Connectivity().checkConnectivity();
    update();
  }

  // logout function
  logout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAll(() => LoginPage());
    GoogleSignIn googleSignIn = GoogleSignIn();
    googleSignIn.disconnect();
  }

  @override
  void onInit() {
    internetstatus();
    super.onInit();
  }
}
