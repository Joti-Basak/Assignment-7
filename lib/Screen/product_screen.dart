import 'package:e_commerce_app/Screen/product_screen_5.dart';
import 'package:flutter/material.dart';
import '../Styles/color_styles.dart';
import '../Styles/text_styles.dart';
import '../Widget/my_custom_button.dart';
import '../Widget/my_portion_counter.dart';
import '../Widget/my_spicy_slider.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  double currentSpicyValue = 0.5;
  int myPortion = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.secondaryColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset("assets/images/arrow-left.png"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        actions: [
          IconButton(
            icon: Image.asset("assets/images/search.png"),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  height: 355,
                  width: 350,
                  child: Image.asset(
                    "assets/images/burger_11.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Cheeseburger Wendy's Burger",
              style: AppTextStyle.title1(fontSize: 25),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.orange, size: 16),
                const SizedBox(width: 4),
                Text("4.9", style: AppTextStyle.retin_mild_hot()),
                const SizedBox(width: 15),
                const Icon(Icons.access_time, color: MyColors.retins, size: 16),
                const SizedBox(width: 4),
                Text("26 mins", style: AppTextStyle.retin_mild_hot()),
              ],
            ),
            SizedBox(height: 16),
            Text(
              "The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.",
              style: AppTextStyle.subtitle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
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
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: myCustomButton(
                    text: '\$8.24',
                    style: AppTextStyle.price(),
                    height: 70,
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  child: myCustomButton(
                    text: ' ORDER NOW ',
                    style: AppTextStyle.orderNow(),
                    height: 70,
                    width: 239,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductScreen5(),
                        ),
                      );
                    },
                    bgColor: MyColors.primaryColor2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
