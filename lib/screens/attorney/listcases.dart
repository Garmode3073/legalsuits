import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:legalsuits/components/cards.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/components/textfield.dart';
import 'package:legalsuits/globals.dart' as g;

class ListCasesPage extends StatefulWidget {
  const ListCasesPage({Key key}) : super(key: key);

  @override
  _ListCasesPageState createState() => _ListCasesPageState();
}

class _ListCasesPageState extends State<ListCasesPage> {
  String filter = "";
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
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
                          return StatefulBuilder(builder: (context, setState) {
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
                                              padding: const EdgeInsets.only(
                                                left: 13.0,
                                                right: 13.0,
                                              ),
                                              child: RawMaterialButton(
                                                onPressed: () {
                                                  setState(() {
                                                    filter2 = g.filters2[i];
                                                  });
                                                },
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 20,
                                                      width: 20,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: filter2 ==
                                                                    g.filters2[
                                                                        i]
                                                                ? Colors
                                                                    .transparent
                                                                : g.blackfont2),
                                                        color: filter2 ==
                                                                g.filters2[i]
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
                                                        style: caseMoreButton2,
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
          //cards of cases
          Expanded(
            child: ListView(
              children: [
                CaseCard2(
                  onPressed: () {},
                ),
                CaseCard2(
                  onPressed: () {},
                ),
                CaseCard2(
                  onPressed: () {},
                ),
                CaseCard2(
                  onPressed: () {},
                ),
                CaseCard2(
                  onPressed: () {},
                ),
                CaseCard2(
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            height: g.height * 0.1,
          ),
        ],
      ),
    );
  }
}
