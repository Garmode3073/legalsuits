import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legalsuits/globals.dart' as g;

//application title
class TitleText extends StatelessWidget {
  const TitleText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Legal\nSuits",
      style: GoogleFonts.martel(
        textStyle: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 18,
          color: g.primary,
        ),
      ),
    );
  }
}

//TextStyles
TextStyle skip = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 18,
    color: g.greyfont,
  ),
);

TextStyle wlcomeback = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 26,
    color: g.blackfont,
  ),
);

TextStyle subwelcome = GoogleFonts.roboto(
  textStyle: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: g.greyfont2,
  ),
);

TextStyle lsblue = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: g.bluefont,
  ),
);

TextStyle altblue = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: g.bluefont,
  ),
);

TextStyle altblack = GoogleFonts.roboto(
  textStyle: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: g.blackfont,
  ),
);

TextStyle tncnonclickable = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 16,
    color: g.blackfont,
  ),
);

TextStyle tncclickable = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: g.bluefont2,
    decoration: TextDecoration.underline,
  ),
);

TextStyle signupselected = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  fontSize: 22,
  color: g.bluefont,
);

TextStyle signupsonselected = GoogleFonts.poppins(
  fontWeight: FontWeight.w300,
  fontSize: 22,
  color: g.blackfont,
);
