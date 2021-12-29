import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legalsuits/globals.dart' as g;

class TxtField extends StatefulWidget {
  const TxtField(
      {Key key, this.controller, this.prefix, this.hint, this.ispass})
      : super(key: key);
  final TextEditingController controller;
  final String prefix, hint;
  final bool ispass;

  @override
  _TxtFieldState createState() => _TxtFieldState();
}

class _TxtFieldState extends State<TxtField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.ispass,
      decoration: InputDecoration(
        prefixIcon: Container(
          width: 8,
          height: 8,
          margin: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/${widget.prefix}.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1.0,
            style: BorderStyle.solid,
            color: g.greyBorder,
          ),
        ),
        hintText: widget.hint,
        hintStyle: GoogleFonts.poppins(
          color: g.greyfont,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
      style: GoogleFonts.poppins(
        color: g.blackfont,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
