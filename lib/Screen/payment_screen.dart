import 'package:e_commerce_app/Styles/text_styles.dart';
import 'package:e_commerce_app/Widget/my_custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../Styles/color_styles.dart';
import '../Widget/my_custom_button.dart';
import '../Widget/my_custom_dialog.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({super.key});
  final summaryData = {
    "Items": "3",
    "Subtotal": "\$45.00",
    "Discount": "-\$5.00",
  };
  bool isChecked = false;

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Order summary", style: AppTextStyle.subtitle3()),
            const SizedBox(height: 10),
            _buildSummaryRow("Order", "\$16.48"),
            _buildSummaryRow("Tax", "\$0.3"),
            _buildSummaryRow("Delivery Fee", "\$1.5"),
            const Divider(),
            _buildSummaryRow("Total:", "\$18.19"),
            _buildSummaryRow("Estimated delivery time:", "15 - 30mins"),
            const SizedBox(height: 24),
            Text("Payment methods", style: AppTextStyle.subtitle3()),
            const SizedBox(height: 8),
            Image.asset("assets/images/credit_card.png"),
            Image.asset("assets/images/debit_card.png"),
            const SizedBox(height: 16),

            SizedBox(
              child: StatefulBuilder(
                builder: (context, setState) {
                  return myCheckbox(
                    title: "Save card details for future payments",
                    value: isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked = newValue!;
                      });
                    },
                  );
                },
              ),
            ),
            Spacer(),
            SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Total price",
                        style: AppTextStyle.price(
                          fontSize: 16,
                          color: MyColors.retins,
                        ),
                      ),
                      Text(
                        "\$18.19",
                        style: AppTextStyle.price(
                          fontSize: 30,
                          color: MyColors.primaryColor2,
                        ),
                      ),
                    ],
                  ),
                  myCustomButton(
                    text: "Pay Now",
                    bgColor: MyColors.primaryColor2,
                    style: AppTextStyle.orderNow(fontSize: 18),
                    onPressed: () {
                      MyCustomDialog(
                        context: context,
                        title: "Success !",
                        message:
                            "Your payment was successful.A receipt for this purchase has been sent to your email.",
                        icon: Icons.check_circle_rounded,
                        iconColor: Colors.red,
                        elevation: 30,
                        width: 300,
                        height: 340,
                      );
                    },
                    width: 209,
                    height: 70,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildSummaryRow(String title, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(color: Colors.grey[600], fontSize: 14)),
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ],
    ),
  );
}

Widget myCheckbox({
  required String title,
  required bool value,
  required ValueChanged<bool?> onChanged,
}) {
  return Row(
    children: [
      Checkbox(
        value: value,
        onChanged: onChanged,
        activeColor: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      Text(title, style: const TextStyle(fontSize: 14)),
    ],
  );
}
