import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle{
  static TextStyle headline1 = GoogleFonts.montserrat(
    fontWeight: FontWeight.w700,
    fontSize: 24,
    height: 32/24, //폰트 사이즈로 꼭 나눠줘야함
    letterSpacing: -0.8
  );

  static TextStyle body1 = GoogleFonts.montserrat(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      height: 32/24,
      letterSpacing: -0.8
  );
}