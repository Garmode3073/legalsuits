import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:legalsuits/components/cards.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/components/textfield.dart';
import 'package:legalsuits/globals.dart' as g;

class AttorneyHome extends StatefulWidget {
  const AttorneyHome({Key key}) : super(key: key);

  @override
  _AttorneyHomeState createState() => _AttorneyHomeState();
}

class _AttorneyHomeState extends State<AttorneyHome> {
  String page = "List";
  String filter = "";
  Map pages = {
    "List": [],
    "Contact": [
      //title of the page
      Padding(
        padding: EdgeInsets.symmetric(horizontal: g.width * 0.045),
        child: Row(
          children: [
            Text(
              "Contact Submission",
              style: pagetitle,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      //List of all cases
      Expanded(
        child: ListView(
          children: [
            CaseCard(
              onPressed: () {},
            ),
            CaseCard(
              onPressed: () {},
            ),
            CaseCard(
              onPressed: () {},
            ),
            CaseCard(
              onPressed: () {},
            ),
            CaseCard(
              onPressed: () {},
            ),
            CaseCard(
              onPressed: () {},
            ),
          ],
        ),
      ),
      Container(
        height: g.height * 0.1,
      ),
    ],
    "Profile": [],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
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
                //SearchBar
                SearchField(),
                SizedBox(
                  height: g.height * 0.05,
                ),
                //page title and filter
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: g.width * 0.045),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Legal Attorney",
                        style: pagetitle,
                      ),
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/assets/Filter.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: RawMaterialButton(onPressed: () {
                          //choose the filter
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                String filter2 = filter;
                                return StatefulBuilder(
                                    builder: (context, setState) {
                                  return BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 6.0,
                                      sigmaY: 6.0,
                                    ),
                                    child: Center(
                                      child: Material(
                                        color: Colors.transparent,
                                        child: Container(
                                          height: g.height * 0.255,
                                          width: g.width * 0.8,
                                          decoration: BoxDecoration(
                                            color: g.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      left: 23,
                                                      right: 23,
                                                      top: 23,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Filter",
                                                          style: pagetitle,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3,
                                                  ),
                                                ] +
                                                List.generate(
                                                  g.filters2.length,
                                                  (i) => Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      left: 13.0,
                                                      right: 13.0,
                                                    ),
                                                    child: RawMaterialButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          filter2 =
                                                              g.filters2[i];
                                                        });
                                                      },
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            height: 20,
                                                            width: 20,
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border.all(
                                                                  color: filter2 ==
                                                                          g.filters2[
                                                                              i]
                                                                      ? Colors
                                                                          .transparent
                                                                      : g.blackfont2),
                                                              color: filter2 ==
                                                                      g.filters2[
                                                                          i]
                                                                  ? g.bluebg
                                                                  : Colors
                                                                      .transparent,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                20,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 13,
                                                          ),
                                                          Text(
                                                            g.filters2[i],
                                                            style: filtertext,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ) +
                                                [
                                                  Expanded(child: Container()),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                          child: Container()),
                                                      Container(
                                                        height: 32,
                                                        width: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: g.primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomRight:
                                                                Radius.circular(
                                                                    18),
                                                          ),
                                                        ),
                                                        child:
                                                            RawMaterialButton(
                                                          onPressed: () {
                                                            filter = filter2;
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Center(
                                                            child: Text(
                                                              "Apply",
                                                              style:
                                                                  caseMoreButton2,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                });
                              });
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            height: g.width * 3,
            width: g.width * 3,
            top: g.height * 0.9,
            left: -g.width,
            child: Container(
              decoration: BoxDecoration(
                  color: g.primary,
                  borderRadius: BorderRadius.circular(g.width * 3)),
            ),
          ),
          Positioned(
            height: 42,
            width: 42,
            bottom: 6,
            right: 47,
            child: RawMaterialButton(
              onPressed: () {
                setState(() {
                  page = "Profile";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/assets/ProfileW.png"),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            height: 42,
            width: 42,
            bottom: 6,
            left: 47,
            child: RawMaterialButton(
              onPressed: () {
                setState(() {
                  page = "Contact";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/assets/MessageW.png"),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            height: 42,
            width: 42,
            bottom: 20,
            left: (g.width * 0.5) - 21,
            child: RawMaterialButton(
              onPressed: () {
                setState(() {
                  page = "List";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/assets/Paper.png"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
