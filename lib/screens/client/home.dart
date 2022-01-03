import 'package:flutter/material.dart';
import 'package:legalsuits/components/authbutt.dart';
import 'package:legalsuits/components/cards.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/components/textfield.dart';
import 'package:legalsuits/globals.dart' as g;

class ClientHome extends StatefulWidget {
  const ClientHome({Key key}) : super(key: key);

  @override
  _ClientHomeState createState() => _ClientHomeState();
}

class _ClientHomeState extends State<ClientHome> {
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
            SearchField(),
            SizedBox(
              height: 15,
            ),
            Expanded(
                child: ListView(
              children: [
                CaseCard(),
                CaseCard(),
                CaseCard(),
                CaseCard(),
                CaseCard(),
                CaseCard(),
              ],
            )),
            SubmitButton(),
          ],
        ),
      ),
    );
  }
}
