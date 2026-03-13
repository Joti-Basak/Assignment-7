import 'package:flutter/material.dart';
import '../Styles/color_styles.dart';

Widget myCustomButton({
  required String text,
  required VoidCallback onPressed,
  Color bgColor = MyColors.primaryColor,
  Color textColor = Colors.white,
  double width = 120,
  double height = 50,
  double elevation =10,
  TextStyle? style
}) {
  return SizedBox(
    width: width,
    height: height,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
         backgroundColor: bgColor,
        foregroundColor: textColor,
        elevation: elevation,
        side: BorderSide.none,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style:style ?? TextStyle(),

      ),
    ),
  );
}