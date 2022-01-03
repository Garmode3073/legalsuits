import 'package:flutter/material.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/globals.dart' as g;

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
                  blurRadius: 35,
                  offset: Offset(0, 0),
                  color: g.blackfont2.withOpacity(0.1),
                  spreadRadius: 2,
                ),
              ],
            ),
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
                        onPressed: () {},
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
        SizedBox(
          height: g.height * 0.0318,
        ),
      ],
    );
  }
}
