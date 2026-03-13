import 'package:e_commerce_app/Screen/payment_screen.dart';
import 'package:e_commerce_app/Styles/color_styles.dart';
import 'package:e_commerce_app/Styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../Widget/my_portion_counter';
import '../Widget/my_custom_app_bar.dart';
import '../Widget/my_custom_button.dart';
import '../Widget/my_spicy_slider.dart';
import '../Widget/my_toppins_side_options.dart';

class ProductScreen5 extends StatelessWidget {
  ProductScreen5({super.key});
  double currentSpicyValue = 0.5;
  int myPortion = 2;

  final List<String> imageList2 = const [
    "assets/images/burger_1.png",
    "assets/images/burger_1.png",
    "assets/images/burger_1.png",
    "assets/images/burger_1.png",
    "assets/images/burger_1.png",
    "assets/images/burger_1.png",
  ];
  final List<String> ItemList2 = [
    "Tomato",
    "Onions",
    "Pickles",
    "Bacons",
    "Fries",
    "Onion",
  ];

  final List<Map<String, dynamic>> toppings = [
    {"title": "Onion", "img": "assets/images/burger_1.png"},
    {"title": "Fries", "img": "assets/images/burger_1.png"},

    {"title": "Tomato", "img": "assets/images/burger_1.png"},
    {"title": "Onion", "img": "assets/images/burger_1.png"},
    {"title": "Fries", "img": "assets/images/burger_1.png"},
    {"title": "Tomato", "img": "assets/images/burger_1.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.secondaryColor,
      appBar: myCustomAppBar(
        context,
        onSearchPressed: () {},
        img: 'assets/images/search.png',
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/pngwing 12.png"),
                  SizedBox(
                    height: 297,
                    width: 162,
                    child: Column(
                      children: [
                        Text(
                          "Customize Your Burger to Your Tastes. Ultimate Experience",
                        ),
                        Spacer(),
                        SizedBox(
                          child: StatefulBuilder(
                            builder:
                                (BuildContext context, StateSetter setState) {
                                  return mySpicySlider(
                                    currentValue: currentSpicyValue,
                                    onChanged: (newValue) {
                                      setState(() {
                                        currentSpicyValue = newValue;
                                      });
                                    },
                                  );
                                },
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          child: StatefulBuilder(
                            builder: (context, setState) {
                              return my_portion_counter(
                                count: myPortion,
                                onChanged: (newValue) {
                                  setState(() {
                                    myPortion = newValue;
                                  });
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  "Toppings",
                  style: AppTextStyle.price(
                    fontSize: 18,
                    color: MyColors.primaryColor2,
                  ),
                ),
              ),
              SizedBox(
                height: 99, // 130
                width: double.infinity,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return toppins_side_options(
                      imagePath: toppings[index]["img"],
                      title: toppings[index]["title"],
                      isAdded: false,
                      onTap: () {},
                    );
                  },
                  separatorBuilder: (_, index) {
                    return SizedBox(width: 12);
                  },
                  itemCount: toppings.length,
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  "Side options",
                  style: AppTextStyle.price(
                    fontSize: 18,
                    color: MyColors.primaryColor2,
                  ),
                ),
              ),
              SizedBox(
                height: 116, // 130
                width: double.infinity,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return toppins_side_options(
                      height2: 80,
                      imagePath: toppings[index]["img"],
                      title: toppings[index]["title"],
                      isAdded: false,
                      onTap: () {},
                    );
                  },
                  separatorBuilder: (_, index) {
                    return SizedBox(width: 12);
                  },
                  itemCount: toppings.length,
                ),
              ),
              SizedBox(height: 32),
              SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total",
                          style: AppTextStyle.price(
                            fontSize: 18,
                            color: MyColors.primaryColor2,
                          ),
                        ),
                        Text(
                          "\$16.49",
                          style: AppTextStyle.price(
                            fontSize: 30,
                            color: MyColors.primaryColor2,
                          ),
                        ),
                      ],
                    ),
                    myCustomButton(
                      text: "ORDER NOW",
                      style: AppTextStyle.orderNow(fontSize: 18),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentScreen(),
                          ),
                        );
                      },
                      width: 200,
                      height: 70,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
