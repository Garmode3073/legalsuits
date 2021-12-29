import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:legalsuits/components/authbutt.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/components/textfield.dart';
import 'package:legalsuits/globals.dart' as g;

class SignupPage extends StatefulWidget {
  const SignupPage({Key key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController cliusername = TextEditingController(text: "");
  TextEditingController cliphone = TextEditingController(text: "");
  TextEditingController cliemail = TextEditingController(text: "");
  TextEditingController clipass = TextEditingController(text: "");
  TextEditingController clipass2 = TextEditingController(text: "");
  TextEditingController attusername = TextEditingController(text: "");
  TextEditingController attnum = TextEditingController(text: "");
  TextEditingController attphone = TextEditingController(text: "");
  TextEditingController attemail = TextEditingController(text: "");
  TextEditingController attpass = TextEditingController(text: "");
  TextEditingController attpass2 = TextEditingController(text: "");
  bool client = true;

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
        resizeToAvoidBottomInset: true,
        body: Container(
          child: ListView(
            children: client
                ? [
                    //appbar logo and skip option
                    Padding(
                      padding: EdgeInsets.only(
                        top: g.height * 0.0392,
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
                          Text(
                            "Back",
                            style: skip,
                          ),
                        ],
                      ),
                    ),

                    //welcome to sign up screen
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: g.width * 0.093),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Welcome",
                                style: wlcomeback,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Sign up with ",
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

                    //client or Attorny
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: g.width * 0.173,
                          vertical: g.height * 0.06),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  FocusScope.of(context).unfocus();
                                  client = true;
                                });
                              },
                              child: Text(
                                "Client",
                                style:
                                    client ? signupselected : signupsonselected,
                              ),
                            ),
                            Container(
                              height: g.height * 0.05,
                              width: 1,
                              color: Colors.black,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  FocusScope.of(context).unfocus();
                                  client = false;
                                });
                              },
                              child: Text(
                                "Attorney",
                                style:
                                    client ? signupsonselected : signupselected,
                              ),
                            ),
                          ]),
                    ),

                    //client side
                    //text fields to input email,phone, username password and login button
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: g.width * 0.05),
                      child: Column(
                        children: [
                          TxtField(
                            controller: cliusername,
                            prefix: "Profile",
                            hint: "Username",
                            ispass: false,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TxtField(
                            controller: cliphone,
                            prefix: "Call",
                            hint: "Contact Number",
                            ispass: false,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TxtField(
                            controller: cliemail,
                            prefix: "Message",
                            hint: "Email",
                            ispass: false,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TxtField(
                            controller: clipass,
                            prefix: "Lock",
                            hint: "Password",
                            ispass: true,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TxtField(
                            controller: clipass2,
                            prefix: "Lock",
                            hint: "Confirm Password",
                            ispass: true,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          AuthButton(
                            buttonName: "Sign up",
                          ),
                        ],
                      ),
                    ),
                  ]
                : [
                      //appbar logo and skip option
                      Padding(
                        padding: EdgeInsets.only(
                          top: g.height * 0.0392,
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
                            Text(
                              "Back",
                              style: skip,
                            ),
                          ],
                        ),
                      ),

                      //welcome to sign up screen
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: g.width * 0.093),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Welcome",
                                  style: wlcomeback,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Sign up with ",
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

                      //client or Attorny
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: g.width * 0.173,
                            vertical: g.height * 0.06),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    FocusScope.of(context).unfocus();
                                    client = true;
                                  });
                                },
                                child: Text(
                                  "Client",
                                  style: client
                                      ? signupselected
                                      : signupsonselected,
                                ),
                              ),
                              Container(
                                height: g.height * 0.05,
                                width: 1,
                                color: Colors.black,
                              ),
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    FocusScope.of(context).unfocus();
                                    client = false;
                                  });
                                },
                                child: Text(
                                  "Attorney",
                                  style: client
                                      ? signupsonselected
                                      : signupselected,
                                ),
                              ),
                            ]),
                      ),

                      //attorney side
                      //text fields to input email,attorney number, phone, username password and login button
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: g.width * 0.05),
                        child: Column(
                          children: [
                            TxtField(
                              controller: attusername,
                              prefix: "Profile",
                              hint: "Username",
                              ispass: false,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TxtField(
                              controller: attnum,
                              prefix: "Profile",
                              hint: "Attorney Number",
                              ispass: false,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TxtField(
                              controller: attphone,
                              prefix: "Call",
                              hint: "Contact Number",
                              ispass: false,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TxtField(
                              controller: attemail,
                              prefix: "Message",
                              hint: "Email",
                              ispass: false,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TxtField(
                              controller: attpass,
                              prefix: "Lock",
                              hint: "Password",
                              ispass: true,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TxtField(
                              controller: attpass2,
                              prefix: "Lock",
                              hint: "Confirm Password",
                              ispass: true,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            AuthButton(
                              buttonName: "Sign up",
                            ),
                          ],
                        ),
                      ),
                    ] +
                    [
                      //terms and condition
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 50),
                        child: Center(
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
                      ),
                    ],
          ),
        ),
      ),
    );
  }
}
