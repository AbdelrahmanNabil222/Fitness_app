import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/View/Screens/home.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:fitness_app/Core/Functions/ExercisesUserColors.dart';

class LoginINController extends GetxController {
  // sign in with google
  signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) {
      return;
    }
    final GoogleSignInAuthentication? googleAuth =
        await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
    Get.off(() => Home());
    //ad colors to exercises by user function
    userColorsAbsBeginners();
    userColorsArmBeginners();
    userColorsChestBeginners();
    userColorsLegBeginners();
    userColorsShoulderBeginners();
    ///////////////////////////
    userColorsAbsintermediate();
    userColorsArmintermediate();
    userColorsChestintermediate();
    userColorsLegintermediate();
    userColorsShoulderintermediate();
    ////////////////////////////
    userColorsAbsAdvanced();
    userColorsArmAdvanced();
    userColorschestAdvanced();
    userColorsLegAdvanced();
    userColorsShoulderAdvanced();
  }

  //internet check
  var connectionResult;
  internetstatus() async {
    connectionResult = await Connectivity().checkConnectivity();
    update();
  }

  @override
  void onInit() {
    internetstatus();
    super.onInit();
  }
}
