import 'package:flutter/material.dart';
import 'package:legalsuits/components/authbutt.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/components/textfield.dart';
import 'package:legalsuits/globals.dart' as g;
import 'package:legalsuits/screens/client/attorney.dart';
import 'package:legalsuits/screens/signup.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController(text: "");
  TextEditingController pass = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    g.width = MediaQuery.of(context).size.width;
    g.height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //appbar logo and skip option
              Padding(
                padding: EdgeInsets.only(
                  top: g.height * 0.0292,
                  right: g.width * 0.058,
                  left: g.width * 0.058,
                  bottom: g.height * 0.0692,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    TitleText(),
                    Container(
                      width: 40,
                      child: RawMaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              child: AllAttorneys(),
                              type: PageTransitionType.fade,
                            ),
                          );
                        },
                        child: Text(
                          "Skip",
                          style: skip,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //welcome to login screen
              Padding(
                padding: EdgeInsets.symmetric(horizontal: g.width * 0.093),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Welcome Back!",
                          style: wlcomeback,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Login to continue using ",
                          style: subwelcome,
                        ),
                        Text(
                          "Legal Suits",
                          style: lsblue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //text fields to input email,phone password and login button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: g.width * 0.05),
                child: Column(
                  children: [
                    TxtField(
                      controller: email,
                      prefix: "Profile",
                      hint: "Email or Phone",
                      ispass: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TxtField(
                      controller: pass,
                      prefix: "Lock",
                      hint: "Password",
                      ispass: true,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    AuthButton(
                      onPressed: () {},
                      buttonName: "Login",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //alternate for login is oresented here (signup)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: g.width * 0.093),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New User? ",
                      style: altblue,
                    ),
                    Text(
                      "Sign up for a new account",
                      style: altblack,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //signup button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: g.width * 0.05),
                child: AuthButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: SignupPage(),
                        duration: Duration(milliseconds: 500),
                        type: PageTransitionType.rightToLeftJoined,
                        childCurrent: LoginPage(),
                      ),
                    );
                  },
                  buttonName: "Sign up",
                ),
              ),

              //terms and condition
              Center(
                child: Column(
                  children: [
                    Text(
                      "By continuing you agree to our",
                      style: tncnonclickable,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Terms of service",
                          style: tncclickable,
                        ),
                        Text(
                          " & ",
                          style: tncnonclickable,
                        ),
                        Text(
                          "Privacy Policy",
                          style: tncclickable,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
