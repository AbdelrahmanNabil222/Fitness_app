import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_app/View/Screens/Auth/LoginPage.dart';
import 'package:fitness_app/View/Screens/home.dart';
import 'package:fitness_app/bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBYGTUTZMP8yV--zK3Y_dv28qBKVwMVo5A",
          appId: "1:972964348158:android:77c5feb81fe4a7891065af",
          messagingSenderId: "972964348158",
          projectId: "fitnessappfirebase-83a84"));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      home: (FirebaseAuth.instance.currentUser != null) ? Home() : LoginPage(),
    );
  }
}
