import 'package:flutter/material.dart';
import 'package:legalsuits/globals.dart' as g;
import 'package:legalsuits/screens/loading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Legal Suites',
      theme: ThemeData(primarySwatch: g.primary),
      home: LoadingPage(),
    );
  }
}
