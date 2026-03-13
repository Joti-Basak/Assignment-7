import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Styles/color_styles.dart';
import '../Styles/text_styles.dart';
import 'my_custom_button.dart';

void MyCustomDialog({
  required BuildContext context,
  required String title,
  required String message,
  required IconData icon,
  Color iconColor = Colors.green,
  double elevation = 20,
  double width = 300,
  double height = 200,
}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: MyColors.secondaryColor,
      elevation: elevation, // Elevation ekhane set kora hoyeche
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      // contentPadding:
      //     EdgeInsets.zero, // Manual size control korar jonno padding zero
      content: SizedBox(
        width: width,
        height: height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            Icon(icon, size: 90, color: iconColor),
            const SizedBox(height: 15),
            Text(
              title,
              style: AppTextStyle.subtitle3(
                fontSize: 30,
                color: MyColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // ৩. Message
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: AppTextStyle.subtitle2(
                  fontSize: 14,
                  color: MyColors.retins,
                ),
              ),
            ),

            const Spacer(),
            myCustomButton(
              text: "Go Back",
              height: 60,
              width: 220,
              // onPressed: () => Navigator.pop(context),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    ),
  );
}
