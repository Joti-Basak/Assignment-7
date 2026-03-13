import 'package:e_commerce_app/Widget/my_elevate_button_Icon.dart';
import 'package:flutter/material.dart';

import '../Styles/color_styles.dart';
import '../Widget/my_custom_app_bar.dart';
import '../Widget/my_custom_chatRowWithButton.dart';
import '../Widget/my_custom_textfield.dart';
import '../Widget/my_search_@_type_TextField.dart';

class ChatScreen1 extends StatelessWidget {
  const ChatScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.secondaryColor,
      appBar: myCustomAppBar(
        context,
        onSearchPressed: () {},
        img: 'assets/images/layout.png',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              chatRowWithButton(
                text: "Hi, how can I help you?",
                isSender: false,
              ),
              const SizedBox(height: 24),
              chatRowWithButton(
                text:
                    "Hello, I ordered two fried chicken burgers. can I know how much time it will get to arrive?",
                isSender: true,
              ),
              const SizedBox(height: 24),

              chatRowWithButton(
                text: "Ok, please let me check!",
                isSender: false,
              ),
              const SizedBox(height: 24),
              chatRowWithButton(text: "Sure...", isSender: true),
              const SizedBox(height: 24),
              chatRowWithButton(
                text: "It’ll get 25 minutes to arrive to your address",
                isSender: false,
              ),
              const SizedBox(height: 24),
              chatRowWithButton(
                text: "Ok, thanks you for your support",
                isSender: true,
              ),
              const SizedBox(height: 32),
              Stack(
                children: [
                  Positioned(
                    child: Search_And_Type(
                      hinter: "Type here...",
                      height: 70,
                      width: double.infinity,
                      bgColor: MyColors.myCustomGrey2,
                      blurRadius: 26,
                    ),
                  ),
                  Positioned(
                    //left: 318,
                    right: 0,
                    child: MyElevate_Icon(
                      height: 70,
                      width: 80,
                      onPressed: () {},
                      bgColor: MyColors.primaryColor,
                      text: '',
                      img: 'assets/images/paper_plane.png',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
