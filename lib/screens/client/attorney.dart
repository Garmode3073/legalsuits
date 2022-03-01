import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:legalsuits/components/authbutt.dart';
import 'package:legalsuits/components/cards.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/components/images.dart';
import 'package:legalsuits/components/textfield.dart';
import 'package:legalsuits/globals.dart' as g;
import 'package:legalsuits/screens/client/home.dart';
import 'package:legalsuits/screens/loading.dart';
import 'package:legalsuits/services/auth.dart';
import 'package:legalsuits/services/connect.dart';
import 'package:page_transition/page_transition.dart';

class AllAttorneys extends StatefulWidget {
  const AllAttorneys({Key key}) : super(key: key);

  @override
  _AllAttorneysState createState() => _AllAttorneysState();
}

class _AllAttorneysState extends State<AllAttorneys> {
  String cat = "";
  String filter = "";
  List attorneydata;

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
                bottom: g.height * 0.0592,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  RawMaterialButton(
                    child: TitleText(),
                    onPressed: () {
                      AuthServices().signout();
                    },
                  ),
                  Container(
                    width: g.width * 0.1,
                    height: g.height * 0.05,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/assets/paperplus.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    child: RawMaterialButton(
                      onPressed: () {
                        g.user == null
                            ? Navigator.pop(context)
                            : Navigator.push(
                                context,
                                PageTransition(
                                  child: MainPage(child: ClientHome()),
                                  type: PageTransitionType.fade,
                                ),
                              );
                      },
                    ),
                  ),
                ],
              ),
            ),

            //search field
            SearchField(),
            SizedBox(
              height: g.height * 0.079,
            ),
            //Categories
            Container(
              height: g.height * 0.065,
              width: g.width * 0.9,
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
            SizedBox(
              height: g.height * 0.03,
            ),
            //title, filter
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
                                      height: g.height * 0.4,
                                      width: g.width * 0.8,
                                      decoration: BoxDecoration(
                                        color: g.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 23,
                                                  right: 23,
                                                  top: 23,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Filter",
                                                      style: pagetitle,
                                                    ),
                                                    Container(
                                                      height: 25,
                                                      width: 17,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'lib/assets/arrowUp.png'),
                                                          fit: BoxFit.fitHeight,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                            ] +
                                            List.generate(
                                              g.filters.length,
                                              (i) => Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 13.0,
                                                  right: 13.0,
                                                ),
                                                child: RawMaterialButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      filter2 = g.filters[i];
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
                                                                      g.filters[
                                                                          i]
                                                                  ? Colors
                                                                      .transparent
                                                                  : g.blackfont2),
                                                          color: filter2 ==
                                                                  g.filters[i]
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
                                                        g.filters[i],
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
                                                  Expanded(child: Container()),
                                                  Container(
                                                    height: 32,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                      color: g.primary,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomRight:
                                                            Radius.circular(18),
                                                      ),
                                                    ),
                                                    child: RawMaterialButton(
                                                      onPressed: () {
                                                        filter = filter2;
                                                        Navigator.pop(context);
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
            //Atorneys related to the filter
            Expanded(
                child: attorneydata == null
                    ? Center(
                        child: LoadingPage(),
                      )
                    : attorneydata.isEmpty
                        ? Center(
                            child: Text("No data"),
                          )
                        : ListView(
                            children: [
                              AttorneyCard(),
                              AttorneyCard(),
                              AttorneyCard(),
                              AttorneyCard(),
                              AttorneyCard(),
                              AttorneyCard(),
                            ],
                          )),
          ],
        ),
      ),
    );
  }
}
