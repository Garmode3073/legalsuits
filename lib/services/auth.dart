import 'package:firebase_auth/firebase_auth.dart';
import 'package:legalsuits/models/user.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //get stream of user changes
  Stream<UserinApp> get userInApp {
    return _auth.userChanges().map((event) {
      if (event == null) {
        return null;
      }
      UserinApp user = UserinApp.fromMap(
          {"uid": event.uid, "email": event.email, "password": ""});
      return user;
    });
  }
}
