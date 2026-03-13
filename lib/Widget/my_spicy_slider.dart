import 'package:flutter/material.dart';
import '../Styles/text_styles.dart';
import '../Styles/color_styles.dart'; // Apnar color file import korun

Widget mySpicySlider({
  required double currentValue,
  required ValueChanged<double> onChanged,
  String title = "Spicy",
  double width = 165,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
          "  $title",
          style: AppTextStyle.retin_mild_hot(fontSize: 14, color: MyColors.primaryColor2)
      ),
      const SizedBox(height: 10),
      SizedBox(
        width: width,
        child: Column(
          children: [
            SliderTheme(
              data: SliderThemeData(
                trackHeight: 5,
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
                overlayShape: const RoundSliderOverlayShape(overlayRadius: 6),
                activeTrackColor: Colors.red,
                inactiveTrackColor: Colors.grey[200],
                thumbColor: Colors.red,
              ),
              child: Slider(
                value: currentValue,
                min: 0.0,
                max: 1.0,
                onChanged: onChanged,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Mild", style: AppTextStyle.retin_mild_hot(fontSize: 12, color: MyColors.mild)),
                  Text("Hot", style: AppTextStyle.retin_mild_hot(fontSize: 12, color: MyColors.hot)),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}