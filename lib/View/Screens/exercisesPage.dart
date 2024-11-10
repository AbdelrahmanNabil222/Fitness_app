import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/Controller/exercisesPageController.dart';
import 'package:fitness_app/Core/Constant/Colors.dart';
import 'package:fitness_app/View/Screens/theExerciseStartedPage.dart';
import 'package:fitness_app/View/Widgets/customnetworkimage.dart';
import 'package:fitness_app/View/Widgets/customElevatedButton.dart';
import 'package:fitness_app/View/Widgets/customImageAsset.dart';
import 'package:fitness_app/View/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExercisesPage extends StatelessWidget {
  ExercisesPage(
      {super.key,
      this.exerciseName,
      this.minutesnumber,
      this.exercisesnumber,
      this.doc1,
      this.subcollection1,
      this.doc2,
      this.image});
  final String? exerciseName;
  final String? minutesnumber;
  final String? exercisesnumber;
  final String? doc1;
  final String? subcollection1;
  final String? doc2;
  final String? image;

  @override
  Widget build(BuildContext context) {
    final ExercisesPageController controllerr = Get.put(ExercisesPageController(
        doc1: doc1!, subcollection1: subcollection1!, doc2: doc2!));
    return GetBuilder<ExercisesPageController>(builder: (contrroller) {
      return StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('Workout')
              .doc(doc1)
              .collection(subcollection1!)
              .doc(doc2)
              .collection('colors')
              .where('id', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }
            return Scaffold(
                backgroundColor: AppColors.white3,
                body: SafeArea(
                    child: Center(
                  child: ListView(
                    children: [
                      Stack(
                        children: [
                          CustomNetworkImage(
                            borderRadius: BorderRadius.circular(0),
                            images: '$image',
                            width: double.infinity,
                            height: 185,
                          ),
                          IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(Icons.arrow_back,
                                  color: AppColors.white)),
                          Positioned(
                            top: 115,
                            left: 15,
                            child: CustomText(
                              text: '$exerciseName',
                              color: AppColors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(left: 22),
                        child: CustomText(
                          text: '$minutesnumber$exercisesnumber'.toString(),
                          color: AppColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 21),
                      SizedBox(
                        height: 426.6,
                        child: ListView.builder(
                            itemCount: controllerr.data.length,
                            itemBuilder: (context, i) {
                              // exercise container
                              return Container(
                                height: 90,
                                margin: const EdgeInsets.fromLTRB(12, 0, 12, 7),
                                decoration: BoxDecoration(
                                    color: Color(int.parse(
                                        snapshot.data!.docs[i]['white'])),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 2.5,
                                    ),
                                    CustomImageAsset(
                                      images: 'images/111.gif',
                                      height: 87,
                                      width: 60,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    Container(
                                        width: 180,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                width: 160,
                                                child: CustomText(
                                                  textAlign: TextAlign.center,
                                                  text:
                                                      '${controllerr.data[i]['name']}',
                                                  fontSize: 14.7,
                                                  color: Color(int.parse(
                                                      snapshot.data!.docs[i]
                                                          ['black'])),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              CustomText(
                                                textAlign: TextAlign.center,
                                                text:
                                                    '${controllerr.data[i]['rep']}',
                                                fontSize: 13,
                                                color: Color(int.parse(snapshot
                                                    .data!.docs[i]['grey'])),
                                              ),
                                            ])),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Container(
                                        height: 40,
                                        width: 77,
                                        decoration: BoxDecoration(
                                            color: AppColors.white4,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: TextButton(
                                            onPressed: () async {
                                              //start btn of exercise is clicked
                                              controllerr.startbtnClicked(
                                                  snapshot.data!.docs[i].id);

                                              Get.to(
                                                  () => theExerciseStartedPage(
                                                        workoutname: controllerr
                                                            .data[i]['name'],
                                                        rep: controllerr.data[i]
                                                            ['rep'],
                                                      ));
                                            },
                                            child: CustomText(
                                              color: AppColors.blue1,
                                              text: snapshot.data!.docs[i]
                                                  ['start'],
                                              fontSize: 16.5,
                                              fontWeight: FontWeight.bold,
                                            )))
                                  ],
                                ),
                              );
                            }),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 29),
                        child: CustomElevatedButton(
                          onPressed: () {
                            // reset colors exercises btn clicked, which make the all colors of all exercises return to main color
                            controllerr.resetExercisescolors();
                          },
                          padding: const EdgeInsets.fromLTRB(0, 11, 0, 11),
                          text: 'RESET EXERCISES',
                          color: AppColors.blue,
                          fontSize: 17,
                          textcolor: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )));
          });
    });
    // });
  }
}
