import 'package:firebase_auth/firebase_auth.dart';
import 'package:legalsuits/models/user.dart';
import 'package:legalsuits/globals.dart' as g;

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

  //register
  Future<UserinApp> register(String email, String password) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    g.user = UserinApp.fromMap(
        {"uid": user.user.uid, "email": email, "password": ""});
    return g.user;
  }

  //sign in
  Future<UserinApp> signIn(String email, String password) async {
    var user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    g.user = UserinApp.fromMap(
        {"uid": user.user.uid, "email": email, "password": ""});
    return g.user;
  }

  //sign out
  Future signout() async {
    await _auth.signOut();
  }
}
