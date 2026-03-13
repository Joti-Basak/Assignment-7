import 'package:e_commerce_app/Styles/color_styles.dart';
import 'package:e_commerce_app/Styles/text_styles.dart';
import 'package:flutter/material.dart';

Widget myTextField({
  required String label,
  required String value,
  bool isPassword = false,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: TextField(
      controller: TextEditingController(text: value),
      readOnly: false,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,

        // label: Text(
        //     label,
        //     style: AppTextStyle.price(color: MyColors.primaryColor2),
        // ),
        labelStyle: const TextStyle(color: Colors.grey),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Color(0xFFFF2D55)),
        ),
      ),
    ),
  );
}
