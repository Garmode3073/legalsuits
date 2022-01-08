import 'package:flutter/material.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/components/images.dart';
import 'package:legalsuits/globals.dart' as g;
import 'package:legalsuits/screens/client/attorneyinfo.dart';
import 'package:legalsuits/screens/client/fullcase.dart';
import 'package:page_transition/page_transition.dart';

class CaseCard extends StatefulWidget {
  const CaseCard({Key key}) : super(key: key);

  @override
  _CaseCardState createState() => _CaseCardState();
}

class _CaseCardState extends State<CaseCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: g.width * 0.077,
            right: g.width * 0.077,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  offset: Offset(0, 0),
                  color: g.blackfont2.withOpacity(0.1),
                  spreadRadius: 2,
                ),
              ],
            ),
            child: RawMaterialButton(
              onPressed: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 21, bottom: 4.5),
                    child: Text(
                      "Case Title",
                      style: casetitle,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.5),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus pellentesque ullamcorper ornare et. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus pellentesque ullamcorper ornare et.",
                      style: caseSubtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 21,
                        width: 80,
                        decoration: BoxDecoration(
                          color: g.primary,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: RawMaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: FullCase(),
                                type: PageTransitionType.fade,
                              ),
                            );
                          },
                          child: Center(
                            child: Text("More", style: caseMoreButton),
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
        SizedBox(
          height: g.height * 0.0318,
        ),
      ],
    );
  }
}

class AttorneyCard extends StatefulWidget {
  const AttorneyCard({Key key}) : super(key: key);

  @override
  _AttorneyCardState createState() => _AttorneyCardState();
}

class _AttorneyCardState extends State<AttorneyCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 14.0,
        vertical: g.height * 0.028,
      ),
      child: Container(
        height: g.height * 0.16,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              offset: Offset(0, 0),
              color: g.blackfont2.withOpacity(0.1),
              spreadRadius: 2,
            ),
          ],
        ),
        child: RawMaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                child: AttorneyInfo(),
                type: PageTransitionType.fade,
              ),
            );
          },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
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
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Iconcard(
                          imagename: "Profile",
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Harvey Specter",
                          style: attname,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Iconcard(
                          imagename: "Work",
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Criminal Attorney",
                          style: attdetails,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Iconcard(
                          imagename: "Ticket",
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "LLB, LLM",
                          style: attdetails,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Iconcard(
                                  imagename: "dollar",
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "1000/hr",
                                  style: attdetails,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                        Container(
                          height: 26,
                          width: 100,
                          decoration: BoxDecoration(
                            color: g.primary,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(18),
                            ),
                          ),
                          child: RawMaterialButton(
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                "Price Sheet",
                                style: caseMoreButton,
                              ),
                            ),
                          ),
                        ),
                      ],
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
