import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:legalsuits/models/attorney.dart';
import 'package:legalsuits/models/client.dart';
import 'package:legalsuits/models/contact.dart';
import 'package:legalsuits/models/user.dart';
import 'package:legalsuits/models/case.dart';

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

  Future addcase(CaseModel newcase) async {
    try {
      await FirebaseFirestore.instance
          .collection("cases")
          .doc(newcase.caseid)
          .set(newcase.tomap());
    } on PlatformException catch (e) {
      return e.message;
    } catch (e) {
      return e.message;
    }
  }

  Future addcontact(Contact contact) async {
    try {
      await FirebaseFirestore.instance
          .collection("contact")
          .doc(contact.contactid)
          .set(contact.tomap());
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

  Future getallattorneys(String filter) async {
    try {
      if (filter == "") {
        var v = await FirebaseFirestore.instance
            .collection("attorneys")
            .get()
            .then((value) =>
                value.docs.map((e) => Attorney.fromMap(e.data())).toList());
        return v;
      } else if (filter == "Low to High") {
        var v = await FirebaseFirestore.instance
            .collection("attorneys")
            .orderBy("ratePh", descending: false)
            .get()
            .then((value) =>
                value.docs.map((e) => Attorney.fromMap(e.data())).toList());
        return v;
      } else if (filter == "High to Low") {
        var v = await FirebaseFirestore.instance
            .collection("attorneys")
            .orderBy("ratePh", descending: true)
            .get()
            .then((value) =>
                value.docs.map((e) => Attorney.fromMap(e.data())).toList());
        return v;
      } else if (filter == "LLB") {
        var v = await FirebaseFirestore.instance
            .collection("attorneys")
            .where("llb", isEqualTo: true)
            .get()
            .then((value) =>
                value.docs.map((e) => Attorney.fromMap(e.data())).toList());
        return v;
      } else if (filter == "LLM") {
        var v = await FirebaseFirestore.instance
            .collection("attorneys")
            .where("llm", isEqualTo: true)
            .get()
            .then((value) =>
                value.docs.map((e) => Attorney.fromMap(e.data())).toList());
        return v;
      }
    } on PlatformException catch (e) {
      return e.message;
    } catch (e) {
      return e.message;
    }
  }

  Future getattorneyscat(String category, String filter) async {
    try {
      if (filter == "") {
        var v = await FirebaseFirestore.instance
            .collection("attorneys")
            .where("category", isEqualTo: category)
            .get()
            .then((value) =>
                value.docs.map((e) => Attorney.fromMap(e.data())).toList());
        return v;
      }
      if (filter == "Low to High") {
        var v = await FirebaseFirestore.instance
            .collection("attorneys")
            .where("category", isEqualTo: category)
            .orderBy("ratePh", descending: false)
            .get()
            .then((value) =>
                value.docs.map((e) => Attorney.fromMap(e.data())).toList());
        return v;
      }
      if (filter == "High to Low") {
        var v = await FirebaseFirestore.instance
            .collection("attorneys")
            .where("category", isEqualTo: category)
            .orderBy("ratePh", descending: true)
            .get()
            .then((value) =>
                value.docs.map((e) => Attorney.fromMap(e.data())).toList());
        return v;
      }
      if (filter == "LLB") {
        var v = await FirebaseFirestore.instance
            .collection("attorneys")
            .where("category", isEqualTo: category)
            .where("llb", isEqualTo: true)
            .get()
            .then((value) =>
                value.docs.map((e) => Attorney.fromMap(e.data())).toList());
        return v;
      }
      if (filter == "LLM") {
        var v = await FirebaseFirestore.instance
            .collection("attorneys")
            .where("category", isEqualTo: category)
            .where("llm", isEqualTo: true)
            .get()
            .then((value) =>
                value.docs.map((e) => Attorney.fromMap(e.data())).toList());
        return v;
      }
    } on PlatformException catch (e) {
      return e.message;
    } catch (e) {
      return e.message;
    }
  }

  Future getcases() async {
    try {
      var v = await FirebaseFirestore.instance.collection("cases").get().then(
          (value) =>
              value.docs.map((e) => CaseModel.fromMap(e.data())).toList());
      return v;
    } on PlatformException catch (e) {
      return e.message;
    } catch (e) {
      return e.message;
    }
  }

  //updating data

}
