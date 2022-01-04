import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legalsuits/components/authbutt.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/components/textfield.dart';
import 'package:legalsuits/globals.dart' as g;

class NewCase extends StatefulWidget {
  const NewCase({Key key}) : super(key: key);

  @override
  _NewCaseState createState() => _NewCaseState();
}

class _NewCaseState extends State<NewCase> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
              padding: EdgeInsets.symmetric(horizontal: g.width * 0.045),
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
              padding: EdgeInsets.symmetric(horizontal: g.width * 0.045),
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
                    padding: EdgeInsets.symmetric(horizontal: g.width * 0.045),
                    child: Column(
                      children: [
                        AddNewFormField(
                          hintText: "Case Title",
                          lines: 1,
                        ),
                        SizedBox(
                          height: g.height * 0.0219,
                        ),
                        AddNewFormField(
                          hintText: "Subject of Case",
                          lines: 1,
                        ),
                        SizedBox(
                          height: g.height * 0.0219,
                        ),
                        AddNewFormField(
                          hintText: "Case description",
                          lines: 5,
                        ),
                        SizedBox(
                          height: g.height * 0.0997,
                        ),
                        SubmitButton(
                          onPressed: () {},
                          buttonName: "Post",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
