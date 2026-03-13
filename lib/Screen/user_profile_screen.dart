import 'package:e_commerce_app/Styles/color_styles.dart';
import 'package:e_commerce_app/Styles/text_styles.dart';
import 'package:flutter/material.dart';
import '../Widget/my_custom_app_bar.dart';
import '../Widget/my_custom_menutile.dart';
import '../Widget/my_custom_textfield.dart';
import '../Widget/my_elevate_button_Icon.dart';
import '../Widget/my_outlined_Icon.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myCustomAppBar(
        context,
        onSearchPressed: () {},
        bgColor: MyColors.primaryColor,
        img: 'assets/images/settings.png',
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: MyColors.primaryColor,
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: MyColors.secondaryColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: 100),
                      myTextField(label: "Name", value: "Sophia Patel"),
                      myTextField(
                        label: "Email",
                        value: "sophiapatel@gmail.com",
                      ),
                      myTextField(
                        label: "Delivery address",
                        value: "123 Main St Apartment 4A, New York, NY",
                      ),
                      myTextField(
                        label: "Password",
                        value: "••••••••",
                        isPassword: true,
                      ),

                      const Divider(height: 40, thickness: 1),

                      myMenuTile(
                        "Payment Details",
                        style: AppTextStyle.retin_mild_hot(fontSize: 18),
                      ),
                      myMenuTile(
                        "Order history",
                        style: AppTextStyle.retin_mild_hot(fontSize: 18),
                      ),
                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyElevate_Icon(
                            onPressed: () {}, //////////////////////////
                            text: 'Edit Profile',
                            img: 'assets/images/settings-sliders.png',
                          ),
                          Outlined_Icon(
                            label: 'Log out',
                            icon: Icons.logout,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 20,
            left: 130,
            right: 130,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: MyColors.secondaryColor,
                borderRadius: BorderRadius.circular(35),
                border: Border.all(color: const Color(0xFFFF2D55), width: 3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.withOpacity(0.2),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/images/user_id.png",
                  height: 139,
                  width: 139,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
