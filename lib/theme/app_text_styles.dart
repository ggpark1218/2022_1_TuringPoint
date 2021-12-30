import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle{
  static TextStyle headline1 = GoogleFonts.roboto(
    //fontFamily: 'Millimetre-Bold.otf',
    fontWeight: FontWeight.w800,
    fontSize: 5,
    height: 3,
    letterSpacing: 0.15
  );

  static TextStyle headline2 = const TextStyle(
      fontFamily: 'Millimetre-Bold.otf',
      fontWeight: FontWeight.w800,
      fontSize: 48,
      height: 56/48,
      letterSpacing: 0.15
  );

  static TextStyle headline3 = GoogleFonts.roboto(
      //fontFamily: 'Millimetre-Regular.otf',
      fontWeight: FontWeight.w500,
      fontSize: 36,
      height: 20/36,
      letterSpacing: 0.25
  );

  static TextStyle subtitle1 = GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 30,
      height: 42/30,
      letterSpacing: 0.15
  );

  static TextStyle body1 = GoogleFonts.roboto(
      fontWeight: FontWeight.w500,
      fontSize: 28,
      height: 50/28,
      letterSpacing: 0.15
  );

  static TextStyle button = GoogleFonts.roboto(
      fontWeight: FontWeight.w700,
      fontSize: 38,
      height: 42/38,
      letterSpacing: 0.15
  );

}