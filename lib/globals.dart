//measurements
import 'package:flutter/material.dart';
import 'package:legalsuits/models/user.dart';

double width, height;
UserinApp user;

//color swatch
Map<int, Color> color = {
  50: Color.fromRGBO(211, 155, 45, .1),
  100: Color.fromRGBO(211, 155, 45, .2),
  200: Color.fromRGBO(211, 155, 45, .3),
  300: Color.fromRGBO(211, 155, 45, .4),
  400: Color.fromRGBO(211, 155, 45, .5),
  500: Color.fromRGBO(211, 155, 45, .6),
  600: Color.fromRGBO(211, 155, 45, .7),
  700: Color.fromRGBO(211, 155, 45, .8),
  800: Color.fromRGBO(211, 155, 45, .9),
  900: Color.fromRGBO(211, 155, 45, 1),
};

//colors
Color primary = MaterialColor(0xffD39B2D, color);
Color bluebg = Color(0xff295C7A);
Color orangebg = Color(0xffE1BA6F);
Color greyBG = Color(0xffF5F5F5);
Color greyfont = Color(0xff939393);
Color greyfont2 = Color(0xff858585);
Color blackfont = Color(0xff1E1E1E);
Color blackfont2 = Color(0xff000000);
Color bluefont = Color(0xff295C7A);
Color bluefont2 = Color(0xff80ddeb);
Color greyBorder = Color(0xffC4C4C4);
Color white = Colors.white;

//attorney types
List categories = [
  'Criminal',
  'Corporate',
  'Civil',
  'Cyber',
];

//filters for attorneys
List filters = [
  'Low to High',
  'High to Low',
  'LLB',
  'LLM',
];

//filters for listed cases
List filters2 = [
  'Newly Added to Old',
  'High to Low',
];
