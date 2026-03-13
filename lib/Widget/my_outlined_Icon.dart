import 'package:e_commerce_app/Styles/color_styles.dart';
import 'package:flutter/material.dart';

Widget Outlined_Icon({
  required String label,
  required IconData icon,
  required VoidCallback onPressed,
  Color color = MyColors.primaryColor,
  double borderRadius = 20,
}) {
  return SizedBox(
    height: 70,
    width: 175,
    child: Directionality(
      textDirection: TextDirection.rtl,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, color: color, size: 20),
        label: Text(
          label,
          style: TextStyle(color: color, fontWeight: FontWeight.w600),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: color), // Dynamic border color
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    ),
  );
}
