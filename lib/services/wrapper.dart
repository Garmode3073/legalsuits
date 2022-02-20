import 'package:flutter/material.dart';
import 'package:legalsuits/models/user.dart';
import 'package:legalsuits/screens/client/attorney.dart';
import 'package:legalsuits/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:legalsuits/globals.dart' as g;

class Wrapper extends StatefulWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserinApp>(context);
    setState(() {
      g.user = user;
    });
    if (user != null) {
      return AllAttorneys();
    }
    return LoginPage();
  }
}
