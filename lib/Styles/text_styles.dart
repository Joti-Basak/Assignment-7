import 'dart:ui';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_styles.dart';

class AppTextStyle {
  static TextStyle lobster({double fontSize = 60}) {
    return GoogleFonts.lobster(
      fontSize: fontSize,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle appBarlobster({double fontSize = 45}) {
    return GoogleFonts.lobster(
      fontSize: fontSize,
      color: Color(0xFF3C2F2F),
      fontWeight: FontWeight.normal,
    );
  }
  static TextStyle subtitle({double fontSize = 18}) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      color: Color(0xFF6A6A6A),
      fontWeight: FontWeight.normal,
    );
  }
  static TextStyle title1({double fontSize = 16}) {
    return GoogleFonts.roboto(
      fontSize: fontSize,
      color: MyColors.primaryColor2,
      fontWeight: FontWeight.bold,
    );
  }
  static TextStyle subtitle2({double fontSize = 16,color = MyColors.primaryColor2,}) {
    return GoogleFonts.roboto(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.normal,
    );
  }
  static TextStyle subtitle3({double fontSize = 20,Color color = MyColors.primaryColor2,
     fontWeight =FontWeight.w600,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      color:color,
      fontWeight: fontWeight,
    );
  }
  static TextStyle orderNow({double fontSize = 18}) {
    return GoogleFonts.inter(
      fontSize: fontSize,
      color: MyColors.secondaryColor,
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle price({double fontSize = 22,Color color = MyColors.secondaryColor,}) {
    return GoogleFonts.roboto(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }static TextStyle retin_mild_hot({double fontSize = 15,Color color = MyColors.retins,}) {
    return GoogleFonts.roboto(
      fontSize: fontSize,
     color: color,
      fontWeight: FontWeight.w500,
    );
  }
}