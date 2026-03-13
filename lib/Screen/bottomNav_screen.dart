import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:e_commerce_app/Screen/home_screen.dart';
import 'package:e_commerce_app/Screen/payment_screen.dart';
import 'package:e_commerce_app/Screen/product_screen_5.dart';
import 'package:e_commerce_app/Screen/user_profile_screen.dart';
import 'package:e_commerce_app/Styles/color_styles.dart';
import 'package:flutter/material.dart';
import 'customer_support_screen.dart';

class MyAnimatedHome extends StatelessWidget {
  MyAnimatedHome({super.key});
  final List<String> imageList = const [
    "assets/images/home.png",
    "assets/images/user.png",
    "assets/images/comment.png",
    "assets/images/heart.png",
  ];

  static final ValueNotifier<int> _bottomNavIndex = ValueNotifier<int>(0);

  final List<Widget> _screens = [
    HomeScreen(),
    UserProfileScreen(),
    ChatScreen1(),
    PaymentScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: _bottomNavIndex,
      builder: (context, value, child) {
        return Scaffold(
          body: _screens[value],

          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            itemCount: imageList.length,
            tabBuilder: (int index, bool isActive) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  imageList[index],
                 // color: isActive ? MyColors.secondaryColor : MyColors.secondaryColor.withOpacity(0.5),
                 // fit: BoxFit.contain,
                ),
              );
            },
            activeIndex: value,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.softEdge,
            onTap: (index) => _bottomNavIndex.value = index,
            backgroundColor: MyColors.primaryColor,
          ),

          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: FloatingActionButton(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(30),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductScreen5()),
                );
              },
              backgroundColor: MyColors.primaryColor,
              child: const Icon(Icons.add, color: MyColors.secondaryColor),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
