import 'package:e_commerce_app/Screen/product_screen.dart';
import 'package:e_commerce_app/Widget/my_custom_button.dart';
import 'package:flutter/material.dart';

import '../Styles/color_styles.dart';
import '../Styles/text_styles.dart';
import '../Widget/my_elevate_button_Icon.dart';
import '../Widget/my_search_@_type_TextField.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final ValueNotifier<int> _idx = ValueNotifier<int>(0);
  final List<String> ItemList = ["All", "Combos", "Sliders", "Classic", "good", "good",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.secondaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                title: Text("Foodgo", style: AppTextStyle.appBarlobster()),
                subtitle: Text(
                  "Order your favourite food!",
                  style: AppTextStyle.subtitle(),
                ),

                trailing: ClipRRect(
                  child: Image.asset(
                    "assets/images/Mask group id.png",
                    width: 60,
                    height: 60,
                    //  fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Search_And_Type(
                      hinter: 'Search',
                      icon: Icons.search,
                    ),
                  ),
                  SizedBox(width: 16),

                  MyElevate_Icon(
                    height: 60,
                    width: 60,
                    onPressed: () {}, /////////
                    bgColor: MyColors.primaryColor,
                    img: 'assets/images/settings-sliders.png',
                  ),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 60,
                child: ValueListenableBuilder(
                  valueListenable: _idx,
                  builder: (_, v, __) => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ItemList.length,
                    itemBuilder: (_, i) => Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 10,
                      ),
                      child: myCustomButton(
                        text: ItemList[i],
                        onPressed: () => _idx.value = i,
                        bgColor: v == i
                            ? MyColors.primaryColor
                            : MyColors.myCustomGrey2,
                        textColor: v == i
                            ? Colors.white
                            : MyColors.primaryColor3,
                        elevation: 5,
                        //width: 150,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: 20,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return Material(
                      // elevation: 25,
                      // shadowColor: Colors.black26,
                      // borderRadius: BorderRadius.circular(15),
                      // color: MyColors.primaryColor,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductScreen(),
                            ),
                          );
                        },
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 225,
                          width: 185,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                  0.2,
                                ),
                                spreadRadius: 2,
                                blurRadius: 10,
                              ),
                            ],
                            color: MyColors.secondaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 120,
                                  width: 120,
                                  child: Image.asset(
                                    "assets/images/burger_3.png",
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Cheeseburger",
                                    style: AppTextStyle.title1(),
                                  ),
                                  subtitle: Text(
                                    "Wendy's Burger",
                                    style: AppTextStyle.subtitle2(),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 18,
                                    ),
                                    const Text(
                                      "4.5",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Spacer(),
                                    Image.asset("assets/images/heart_2.png"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
