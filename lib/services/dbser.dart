import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:legalsuits/models/attorney.dart';
import 'package:legalsuits/models/client.dart';
import 'package:legalsuits/models/user.dart';

class DBServices {
  //adding data
  Future registerUser(UserinApp user) async {
    try {
      await FirebaseFirestore.instance
          .collection("users")
          .doc(user.uid)
          .set(user.tomap());
    } on PlatformException catch (e) {
      return e.message;
    } catch (e) {
      return e.message;
    }
    return user;
  }

  Future registerClient(Client user) async {
    try {
      await FirebaseFirestore.instance
          .collection("clients")
          .doc(user.uid)
          .set(user.tomap());
    } on PlatformException catch (e) {
      return e.message;
    } catch (e) {
      return e.message;
    }
  }

  Future registerAttorney(Attorney user) async {
    try {
      await FirebaseFirestore.instance
          .collection("attorneys")
          .doc(user.uid)
          .set(user.tomap());
    } on PlatformException catch (e) {
      return e.message;
    } catch (e) {
      return e.message;
    }
  }

  //retreiving data
  Future getpassword(String email) async {
    try {
      var v = await FirebaseFirestore.instance
          .collection("users")
          .where("email", isEqualTo: email)
          .get()
          .then((value) => value.docs.map((element) {
                return element.data()["password"];
              }).toList());
      if (v.isEmpty) {
        return "User not registered";
      } else {
        return v;
      }
    } on PlatformException catch (e) {
      return e.message;
    } catch (e) {
      return e.message;
    }
  }

  Future getType(uid) async {
    try {
      var v =
          await FirebaseFirestore.instance.collection("users").doc(uid).get();
      return v.data()["type"];
    } on PlatformException catch (e) {
      return e.message;
    } catch (e) {
      return e.message;
    }
  }

  Future getuser(String uid, String type) async {
    try {
      var v = await FirebaseFirestore.instance.collection(type).doc(uid).get();
      return v.data();
    } on PlatformException catch (e) {
      return e.message;
    } catch (e) {
      return e.message;
    }
  }

  //updating data

}
