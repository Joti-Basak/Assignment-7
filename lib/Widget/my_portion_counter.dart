import 'package:flutter/material.dart';
import '../Styles/text_styles.dart';
import '../Styles/color_styles.dart';

Widget my_portion_counter({
  required int count,
  required ValueChanged<int> onChanged,
  String title = "Portion",
  Color btnColor = Colors.red,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: AppTextStyle.retin_mild_hot(
          fontSize: 14,
          color: MyColors.primaryColor2,
        ),
      ),
      const SizedBox(height: 10),
      Row(
        children: [
          // Minus Button
          _buildCounterButton(Icons.remove, btnColor, () {
            if (count > 1) {
              onChanged(count - 1);
            }
          }),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "$count",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          // Plus Button
          _buildCounterButton(Icons.add, btnColor, () {
            onChanged(count + 1);
          }),
        ],
      ),
    ],
  );
}

Widget _buildCounterButton(IconData icon, Color color, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Icon(icon, color: Colors.white, size: 20),
    ),
  );
}
