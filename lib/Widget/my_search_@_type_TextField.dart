import 'package:flutter/material.dart';

import '../Styles/color_styles.dart';

Widget Search_And_Type({
  double width = 319,
  double height = 60,
  double spreadRadius =5,
  double blurRadius = 10,
  Color bgColor = MyColors.secondaryColor,
  required String hinter,
   IconData? icon,

}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: spreadRadius,
          blurRadius: blurRadius,
        ),
      ],
    ),

    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hinter,
          prefixIcon: Icon(icon, color: MyColors.primaryColor2),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    ),
  );
}
