import 'package:flutter/material.dart';

Widget toppins_side_options({
  required String imagePath,
  required String title,
  required VoidCallback onTap,
  double width = 84,//84
  //double height = 99, //99
  double height2 = 60,//85
  bool isAdded = false,
}) {
  return Container(
    width: width,
   // height: height,// Card width
    margin: const EdgeInsets.only(right: 12),
    decoration: BoxDecoration(
      color: const Color(0xFF2C2524), // Dark background color
      borderRadius: BorderRadius.circular(20),

    ),
    child: Column(
      children: [
        // ১. Image Section (White background with curve)
        Container(
          height: height2,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(15),
              bottom: Radius.circular(20),
            ),
            border: Border.all(
              color: Colors.grey,
              width: 0.5
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(imagePath,
             // height: 47,
              // fit: BoxFit.contain
            ),
          ),
        ),


        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}