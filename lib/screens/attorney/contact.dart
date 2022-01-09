import 'package:flutter/material.dart';
import 'package:legalsuits/components/cards.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/globals.dart' as g;

class ContactPage extends StatefulWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
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
      ),
    );
  }
}
