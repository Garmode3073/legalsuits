import 'package:flutter/material.dart';
import 'package:legalsuits/components/authbutt.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/components/textfield.dart';
import 'package:legalsuits/globals.dart' as g;
import 'package:legalsuits/services/auth.dart';

class MyProfileAttorney extends StatefulWidget {
  const MyProfileAttorney({Key key}) : super(key: key);

  @override
  _MyProfileAttorneyState createState() => _MyProfileAttorneyState();
}

class _MyProfileAttorneyState extends State<MyProfileAttorney> {
  bool llb = false;
  bool llm = false;
  String cat = "";
  TextEditingController cliusername = TextEditingController(text: "");
  TextEditingController cliphone = TextEditingController(text: "");
  TextEditingController cliemail = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: g.width * 0.05,
                top: g.height * 0.04,
                bottom: g.height * 0.05),
            child: RawMaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              //page title
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: g.greyBorder,
                  ),
                  Text("Account", style: pagetitle2),
                ],
              ),
            ),
          ),
          //profile photo and change option
          Container(
            height: g.height * 0.175,
            width: g.height * 0.175,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: NetworkImage(
                    "https://www.gentlemansgazette.com/wp-content/uploads/2015/08/Fine-pinstripe-suit-with-navy-grenadine-tie.webp"),
              ),
            ),
          ),
          RawMaterialButton(
            onPressed: () {},
            child: Text(
              "Change Picture",
              style: tncnonclickable,
            ),
          ),
          SizedBox(
            height: g.height * 0.05,
          ),
          //name field
          Padding(
            padding: EdgeInsets.symmetric(horizontal: g.width * 0.0966),
            child: TxtField(
              controller: cliusername,
              prefix: "Profile",
              hint: "Username",
              ispass: false,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //is the attorney LLB?
          Padding(
            padding: EdgeInsets.symmetric(horizontal: g.width * 0.0966),
            child: Row(
              children: [
                RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      llb = !llb;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: llb ? Colors.transparent : g.blackfont2),
                          color: llb ? g.bluebg : Colors.transparent,
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "LLB",
                        style: filtertext,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          //is attorney LLM
          Padding(
            padding: EdgeInsets.symmetric(horizontal: g.width * 0.0966),
            child: Row(
              children: [
                RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      llm = !llm;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: llm ? Colors.transparent : g.blackfont2),
                          color: llm ? g.bluebg : Colors.transparent,
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "LLM",
                        style: filtertext,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: g.height * 0.03,
          ),
          //Categories
          Padding(
            padding: EdgeInsets.symmetric(horizontal: g.width * 0.0966),
            child: Container(
              height: g.height * 0.065,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  4,
                  (i) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: cat == g.categories[i]
                            ? g.bluebg
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                            color: cat == g.categories[i]
                                ? Colors.transparent
                                : Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4.0,
                      ),
                      child: RawMaterialButton(
                        onPressed: () {
                          setState(() {
                            cat = g.categories[i];
                          });
                        },
                        child: Text(
                          g.categories[i],
                          style: cat == g.categories[i]
                              ? catAttPageuselected
                              : catAttPageunselected,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: g.height * 0.05,
          ),
          //hourly rate
          Padding(
            padding: EdgeInsets.symmetric(horizontal: g.width * 0.0966),
            child: TxtField(
              controller: cliphone,
              prefix: "dollar",
              hint: "Hourly Rate",
              ispass: false,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //contact number
          Padding(
            padding: EdgeInsets.symmetric(horizontal: g.width * 0.0966),
            child: TxtField(
              controller: cliphone,
              prefix: "Call",
              hint: "Contact Number",
              ispass: false,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //email
          Padding(
            padding: EdgeInsets.symmetric(horizontal: g.width * 0.0966),
            child: TxtField(
              controller: cliemail,
              prefix: "Message",
              hint: "Email",
              ispass: false,
            ),
          ),
          SizedBox(
            height: g.height * 0.08,
          ),
          // add case pricesheet and portfolio
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AttorneyButton1(
                buttonname: "Case Price Sheet",
                onpressed: () {},
              ),
              AttorneyButton1(
                buttonname: "Case Portfolio",
                onpressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: g.height * 0.04,
          ),
          //save button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: g.width * 0.7,
                height: 60,
                decoration: BoxDecoration(
                  color: g.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Save",
                    style: buttontext,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: g.height * 0.04,
          ),
          //save button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RawMaterialButton(
                onPressed: () async {
                  Navigator.pop(context);
                  await AuthServices().signout();
                },
                child: Container(
                  width: g.width * 0.7,
                  height: 60,
                  decoration: BoxDecoration(
                    color: g.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Sign Out",
                      style: buttontext,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: g.height * 0.04,
          ),
          //terms and condition
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
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
    );
  }
}
