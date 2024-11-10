import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// add colors to exercises by user when signup
//i will check if the exercises that i want to add colors to it ,had been added a color to it before or not
userColorsAbsBeginners() async {
  //get the doc that i added when i added documents of colors when the user signup
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('beginner')
      .collection('beginner trainer')
      .doc('abs begineer')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  // if you found this doc
  if (querySnapshot.exists) {
    //return false
    return false;
  }
  //if you dont found it
  else {
    //add the doc and add a exercises colors documents
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('beginner')
        .collection('beginner trainer')
        .doc('abs begineer')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 15) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('beginner')
          .collection('beginner trainer')
          .doc('abs begineer')
          .collection('colors');
      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid,
      });

      i++;
    }
  }
}
//////////////////// i explain the past function and the next function like it explaining

userColorsArmBeginners() async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('beginner')
      .collection('beginner trainer')
      .doc('arm beginner')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  if (querySnapshot.exists) {
    return false;
  } else {
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('beginner')
        .collection('beginner trainer')
        .doc('arm beginner')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 19) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('beginner')
          .collection('beginner trainer')
          .doc('arm beginner')
          .collection('colors');

      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid
      });

      i++;
    }
  }
}

userColorsChestBeginners() async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('beginner')
      .collection('beginner trainer')
      .doc('chest beginner')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  if (querySnapshot.exists) {
    return false;
  } else {
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('beginner')
        .collection('beginner trainer')
        .doc('chest beginner')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 11) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('beginner')
          .collection('beginner trainer')
          .doc('chest beginner')
          .collection('colors');

      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid
      });

      i++;
    }
  }
}

userColorsLegBeginners() async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('beginner')
      .collection('beginner trainer')
      .doc('leg beginner')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  if (querySnapshot.exists) {
    return false;
  } else {
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('beginner')
        .collection('beginner trainer')
        .doc('leg beginner')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 23) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('beginner')
          .collection('beginner trainer')
          .doc('leg beginner')
          .collection('colors');

      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid
      });

      i++;
    }
  }
}

userColorsShoulderBeginners() async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('beginner')
      .collection('beginner trainer')
      .doc('shoulder and back beginner')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  if (querySnapshot.exists) {
    return false;
  } else {
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('beginner')
        .collection('beginner trainer')
        .doc('shoulder and back beginner')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 17) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('beginner')
          .collection('beginner trainer')
          .doc('shoulder and back beginner')
          .collection('colors');

      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid
      });

      i++;
    }
  }
}

////////////////////////////////////////////////////// intermediateExercises Colors
userColorsAbsintermediate() async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('intermediate')
      .collection('intermediate trainer')
      .doc('abs intermediate')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  if (querySnapshot.exists) {
    return false;
  } else {
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('intermediate')
        .collection('intermediate trainer')
        .doc('abs intermediate')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 21) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('intermediate')
          .collection('intermediate trainer')
          .doc('abs intermediate')
          .collection('colors');

      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid
      });

      i++;
    }
  }
}

userColorsArmintermediate() async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('intermediate')
      .collection('intermediate trainer')
      .doc('arm intermediate')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  if (querySnapshot.exists) {
    return false;
  } else {
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('intermediate')
        .collection('intermediate trainer')
        .doc('arm intermediate')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 25) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('intermediate')
          .collection('intermediate trainer')
          .doc('arm intermediate')
          .collection('colors');

      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid
      });

      i++;
    }
  }
}

userColorsChestintermediate() async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('intermediate')
      .collection('intermediate trainer')
      .doc('chest intermediate')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  if (querySnapshot.exists) {
    return false;
  } else {
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('intermediate')
        .collection('intermediate trainer')
        .doc('chest intermediate')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 14) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('intermediate')
          .collection('intermediate trainer')
          .doc('chest intermediate')
          .collection('colors');

      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid
      });

      i++;
    }
  }
}

userColorsLegintermediate() async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('intermediate')
      .collection('intermediate trainer')
      .doc('leg intermediate')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  if (querySnapshot.exists) {
    return false;
  } else {
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('intermediate')
        .collection('intermediate trainer')
        .doc('leg intermediate')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 37) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('intermediate')
          .collection('intermediate trainer')
          .doc('leg intermediate')
          .collection('colors');

      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid
      });

      i++;
    }
  }
}

userColorsShoulderintermediate() async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('intermediate')
      .collection('intermediate trainer')
      .doc('shoulder and back intermediate')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  if (querySnapshot.exists) {
    return false;
  } else {
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('intermediate')
        .collection('intermediate trainer')
        .doc('shoulder and back intermediate')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 17) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('intermediate')
          .collection('intermediate trainer')
          .doc('shoulder and back intermediate')
          .collection('colors');

      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid
      });

      i++;
    }
  }
}

/////////////////////////////////////////////////////// Advanced Exercises Colors
userColorsAbsAdvanced() async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('advanced')
      .collection('advanced trainer')
      .doc('abs advanced')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  if (querySnapshot.exists) {
    return false;
  } else {
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('advanced')
        .collection('advanced trainer')
        .doc('abs advanced')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 21) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('advanced')
          .collection('advanced trainer')
          .doc('abs advanced')
          .collection('colors');

      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid
      });

      i++;
    }
  }
}

userColorsArmAdvanced() async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('advanced')
      .collection('advanced trainer')
      .doc('arm advanced')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  if (querySnapshot.exists) {
    return false;
  } else {
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('advanced')
        .collection('advanced trainer')
        .doc('arm advanced')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 28) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('advanced')
          .collection('advanced trainer')
          .doc('arm advanced')
          .collection('colors');

      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid
      });

      i++;
    }
  }
}

userColorschestAdvanced() async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('advanced')
      .collection('advanced trainer')
      .doc('chest advanced')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  if (querySnapshot.exists) {
    return false;
  } else {
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('advanced')
        .collection('advanced trainer')
        .doc('chest advanced')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 16) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('advanced')
          .collection('advanced trainer')
          .doc('chest advanced')
          .collection('colors');

      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid
      });

      i++;
    }
  }
}

userColorsLegAdvanced() async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('advanced')
      .collection('advanced trainer')
      .doc('leg advanced')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  if (querySnapshot.exists) {
    return false;
  } else {
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('advanced')
        .collection('advanced trainer')
        .doc('leg advanced')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 44) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('advanced')
          .collection('advanced trainer')
          .doc('leg advanced')
          .collection('colors');

      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid
      });

      i++;
    }
  }
}

userColorsShoulderAdvanced() async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('Workout')
      .doc('advanced')
      .collection('advanced trainer')
      .doc('shoulder and back advanced')
      .collection('colors')
      .doc(FirebaseAuth.instance.currentUser!.email)
      .get();
  if (querySnapshot.exists) {
    return false;
  } else {
    CollectionReference users = FirebaseFirestore.instance
        .collection('Workout')
        .doc('advanced')
        .collection('advanced trainer')
        .doc('shoulder and back advanced')
        .collection('colors');
    users.doc(FirebaseAuth.instance.currentUser!.email).set({'x': ''});
    int i = 1;
    while (i <= 17) {
      CollectionReference colorr = FirebaseFirestore.instance
          .collection('Workout')
          .doc('advanced')
          .collection('advanced trainer')
          .doc('shoulder and back advanced')
          .collection('colors');

      colorr.add({
        'white': '4294967295',
        'black': '4278190080',
        'grey': '4285558639',
        'start': 'Start',
        'id': FirebaseAuth.instance.currentUser!.uid
      });

      i++;
    }
  }
}
