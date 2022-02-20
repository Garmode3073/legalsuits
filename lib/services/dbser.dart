import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:legalsuits/models/user.dart';

class DBServices {
  //adding data
  Future registerUser(UserinApp user) async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .set(user.tomap());
  }

  //retreiving data

  //updating data

}
