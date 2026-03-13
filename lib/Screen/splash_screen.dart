import 'package:e_commerce_app/Styles/color_styles.dart';
import 'package:e_commerce_app/Styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'bottomNav_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      if (context.mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>MyAnimatedHome()),
        );
      }
    });

    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Column(

        children: [
          Spacer(),
          Text("Foodgo",style: AppTextStyle.lobster(),),

          Spacer(),
          Align(
            alignment: Alignment.bottomLeft,
              child: Image.asset("assets/images/splash_screen_img.png"))


        ],
      ),
    );
  }
}
