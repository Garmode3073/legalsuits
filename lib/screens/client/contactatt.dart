import 'package:flutter/material.dart';
import 'package:legalsuits/components/authbutt.dart';
import 'package:legalsuits/components/textfield.dart';
import 'package:legalsuits/globals.dart' as g;
import 'package:legalsuits/components/commons.dart';

class ContactAttorney extends StatefulWidget {
  const ContactAttorney({Key key}) : super(key: key);

  @override
  _ContactAttorneyState createState() => _ContactAttorneyState();
}

class _ContactAttorneyState extends State<ContactAttorney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            height: g.height * 0.0262,
          ),
          //title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: g.width * 0.045),
            child: Row(
              children: [
                Text(
                  "Contact",
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
                        hintText: "Title",
                        lines: 1,
                      ),
                      SizedBox(
                        height: g.height * 0.0219,
                      ),
                      AddNewFormField(
                        hintText: "Email",
                        lines: 1,
                      ),
                      SizedBox(
                        height: g.height * 0.0219,
                      ),
                      AddNewFormField(
                        hintText: "Number",
                        lines: 1,
                      ),
                      SizedBox(
                        height: g.height * 0.0219,
                      ),
                      AddNewFormField(
                        hintText: "Message",
                        lines: 5,
                      ),
                      SizedBox(
                        height: g.height * 0.0997,
                      ),
                      SubmitButton(
                        onPressed: () {},
                        buttonName: "Submit",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
