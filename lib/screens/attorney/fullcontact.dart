import 'package:flutter/material.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/globals.dart' as g;

class ContactedCase extends StatefulWidget {
  const ContactedCase({Key key}) : super(key: key);

  @override
  _ContactedCaseState createState() => _ContactedCaseState();
}

class _ContactedCaseState extends State<ContactedCase> {
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
              bottom: g.height * 0.1092,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              textBaseline: TextBaseline.alphabetic,
              children: [
                TitleText(),
                Container(
                  height: g.height * 0.1,
                  width: g.height * 0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(
                          "https://www.gentlemansgazette.com/wp-content/uploads/2015/08/Fine-pinstripe-suit-with-navy-grenadine-tie.webp"),
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
            height: g.height * 0.0597,
          ),
          Expanded(
            child: ListView(
              children: [
                //Case Title
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: g.width * 0.045),
                  child: Row(
                    children: [
                      Text(
                        "Case Title",
                        style: casetitle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: g.height * 0.038,
                ),
                //case in details
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: g.width * 0.045),
                  child: Column(
                    children: [
                      Text(
                        '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus pellentesque ullamcorper ornare et.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,
                        ''',
                        style: caseSubtitle,
                        softWrap: true,
                      ),
                      SizedBox(
                        height: g.height * 0.048,
                      ),
                      //email id
                      Row(
                        children: [
                          Text(
                            "gauravgarmode16@gmail.com",
                            style: caseSubtitle,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: g.height * 0.018,
                      ),
                      //contact number
                      Row(
                        children: [
                          Text(
                            "+91 9665634810",
                            style: caseSubtitle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: g.height * 0.048,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
