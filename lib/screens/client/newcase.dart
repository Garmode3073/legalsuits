import 'package:flutter/material.dart';
import 'package:legalsuits/components/authbutt.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/components/textfield.dart';
import 'package:legalsuits/globals.dart' as g;
import 'package:legalsuits/models/case.dart';
import 'package:legalsuits/screens/loading.dart';
import 'package:legalsuits/services/connect.dart';
import 'package:legalsuits/services/dbser.dart';

class NewCase extends StatefulWidget {
  const NewCase({Key key}) : super(key: key);

  @override
  _NewCaseState createState() => _NewCaseState();
}

class _NewCaseState extends State<NewCase> {
  final _key = GlobalKey<FormState>();
  TextEditingController title = TextEditingController(text: "");
  TextEditingController subject = TextEditingController(text: "");
  TextEditingController description = TextEditingController(text: "");
  bool isload = false;

  @override
  Widget build(BuildContext context) {
    return isload
        ? LoadingPage()
        : MainPage(
            child: GestureDetector(
              onTap: () {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
              child: Scaffold(
                body: Column(
                  children: [
                    //appbar logo and skip option
                    Padding(
                      padding: EdgeInsets.only(
                        top: g.height * 0.0492,
                        right: g.width * 0.058,
                        left: g.width * 0.058,
                        bottom: g.height * 0.0392,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          TitleText(),
                          Container(
                            width: g.width * 0.1,
                            height: g.height * 0.05,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("lib/assets/paperplus.png"),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //back button and icon
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: g.width * 0.045),
                      child: RawMaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black.withOpacity(0.7),
                            ),
                            SizedBox(
                              width: g.width * 0.045,
                            ),
                            Text(
                              "Back",
                              style: back,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: g.height * 0.0997,
                    ),
                    //Post a new case
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: g.width * 0.045),
                      child: Row(
                        children: [
                          Text(
                            "Post A New Case",
                            style: casetitle,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: g.height * 0.038,
                    ),
                    //Form of adding a new case
                    Expanded(
                      child: ListView(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: g.width * 0.045),
                            child: Form(
                              key: _key,
                              child: Column(
                                children: [
                                  AddNewFormField(
                                    ctrl: title,
                                    hintText: "Case Title",
                                    lines: 1,
                                    validate: (String text) {
                                      if (text.trim().isEmpty) {
                                        return "Case Title can't be null";
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: g.height * 0.0219,
                                  ),
                                  AddNewFormField(
                                    ctrl: subject,
                                    hintText: "Subject of Case",
                                    lines: 1,
                                    validate: (String text) {
                                      if (text.trim().isEmpty) {
                                        return "Case Subject can't be null";
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: g.height * 0.0219,
                                  ),
                                  AddNewFormField(
                                    ctrl: description,
                                    hintText: "Case description",
                                    lines: 5,
                                    validate: (String text) {
                                      if (text.trim().isEmpty) {
                                        return "Case Description can't be null";
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: g.height * 0.0997,
                                  ),
                                  SubmitButton(
                                    onPressed: () {
                                      if (_key.currentState.validate()) {
                                        setState(() {
                                          isload = true;
                                        });
                                        String caseid = g.getRandomString(20);
                                        DBServices()
                                            .addcase(CaseModel.fromMap({
                                          "caseId": caseid,
                                          "caseTitle": title.text.trim(),
                                          "caseSubject": subject.text.trim(),
                                          "caseDescription":
                                              description.text.trim(),
                                          "uid": g.user.uid,
                                          "dateTime": DateTime.now(),
                                        }))
                                            .then((value) {
                                          if (value is String) {
                                            setState(() {
                                              isload = false;
                                            });
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(value),
                                              ),
                                            );
                                          } else {
                                            setState(() {
                                              isload = false;
                                              Navigator.pop(context);
                                            });
                                          }
                                        });
                                        setState(() {
                                          isload = false;
                                        });
                                      }
                                    },
                                    buttonName: "Post",
                                  ),
                                ],
                              ),
                            ),
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
