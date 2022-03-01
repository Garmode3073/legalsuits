import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:legalsuits/globals.dart' as g;
import 'package:legalsuits/models/user.dart';
import 'package:legalsuits/screens/loading.dart';
import 'package:legalsuits/services/auth.dart';
import 'package:legalsuits/services/connect.dart';
import 'package:legalsuits/services/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(home: LoadingPage());
        } else if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Legal Suites',
            theme: ThemeData(primarySwatch: g.primary),
            home: StreamProvider<UserinApp>.value(
              value: AuthServices().userInApp,
              initialData: null,
              child: MainPage(
                child: Wrapper(),
              ),
            ),
          );
        }
        return MaterialApp(
          title: 'Legal Suites',
          theme: ThemeData(primarySwatch: g.primary),
          home: LoadingPage(),
        );
      },
    );
  }
}
