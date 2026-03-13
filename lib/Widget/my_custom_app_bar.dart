import 'package:flutter/material.dart';

PreferredSize myCustomAppBar(
  BuildContext context, {
  String? title,
  VoidCallback? onSearchPressed,
  Color bgColor = Colors.white,
 // Color backColor = Colors.white,
 // Color rightColor =  Colors.white,
      required String img,
}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(60), // AppBar-er height
    child: AppBar(
      backgroundColor: bgColor,
      elevation: 0,
      centerTitle: true,
      // Left Back Button
      leading: IconButton(
        icon: Image.asset(
          "assets/images/arrow-left.png",
          height: 24,
          width: 24,
         // color: backColor,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      //  Title (Optional)
      title: title != null
          ? Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            )
          : null,
      //  Right Search Icon
      actions: [
        if (onSearchPressed != null)
          IconButton(
            icon: Image.asset(img, height: 24, width: 24,
           // color: rightColor,
            ),
            onPressed: onSearchPressed,
          ),
        const SizedBox(width: 10), // Ektu gap rakhar jonno
      ],
    ),
  );
}
