import 'package:flutter/material.dart';
import 'package:legalsuits/components/cards.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/components/images.dart';
import 'package:legalsuits/globals.dart' as g;

class FullCase extends StatefulWidget {
  const FullCase({Key key}) : super(key: key);

  @override
  _FullCaseState createState() => _FullCaseState();
}

class _FullCaseState extends State<FullCase> {
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
                //Subject of the case
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: g.width * 0.045),
                  child: Row(
                    children: [
                      Text(
                        "subject of Case",
                        style: casesubject,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: g.height * 0.048,
                ),
                //case in details
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: g.width * 0.045),
                  child: Text(
                    '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus pellentesque ullamcorper ornare et.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem blandit dui in mauris in. Neque - 500550,
                    ''',
                    style: caseSubtitle,
                    softWrap: true,
                  ),
                ),
                SizedBox(
                  height: g.height * 0.048,
                ),
                //interested attorneys
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: g.width * 0.045),
                  child: Row(
                    children: [
                      Text(
                        "Attorney Interested",
                        style: casetitle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: g.height * 0.008,
                ),
                AttorneyCard(),
                AttorneyCard(),
                AttorneyCard(),
                AttorneyCard(),
                AttorneyCard(),
                AttorneyCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
