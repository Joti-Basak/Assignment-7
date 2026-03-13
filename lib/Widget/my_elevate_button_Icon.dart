import 'package:flutter/material.dart';
import '../Styles/color_styles.dart';

Widget MyElevate_Icon({
  required VoidCallback onPressed,
  double height = 70,
  double width = 195,
  String? text,
  //required IconData icon,
  Color bgColor = MyColors.primaryColor2,
  Color textColor = MyColors.secondaryColor,
  Color color = MyColors.secondaryColor,
  TextStyle? style,
  required String img,
}) {
  return SizedBox(
    height: height,
    width: width,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        backgroundColor: bgColor,
        foregroundColor: textColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (text != null && text.isNotEmpty) ...[
            Text(text, style: style ?? const TextStyle()),
            const SizedBox(width: 8),
          ],
          SizedBox(width: 8),
          // Icon(icon, color: color, size: 20),
          if (img.isNotEmpty) ...[
            IconButton(
              icon: Image.asset(img, height: 24, width: 24),
              onPressed: () {},
            ),
          ],
        ],
      ),
    ),
  );
}
