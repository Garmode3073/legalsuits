import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legalsuits/globals.dart' as g;

class AuthButton extends StatefulWidget {
  const AuthButton({Key key, this.buttonName}) : super(key: key);
  final String buttonName;

  @override
  _AuthButtonState createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RawMaterialButton(
            onPressed: () {},
            child: Container(
                height: g.height * 0.0824,
                decoration: BoxDecoration(
                  color: g.bluebg,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    widget.buttonName,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
