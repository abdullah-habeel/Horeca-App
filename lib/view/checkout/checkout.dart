import 'package:final_project/custom_widgets/alertbox.dart';
import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_eleveted_button.dart';
import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:final_project/custom_widgets/custom_text.dart';
import 'package:final_project/custom_widgets/gapbox.dart';
import 'package:final_project/custom_widgets/listtile_cash.dart';
import 'package:final_project/custom_widgets/price_row.dart';
import 'package:final_project/custom_widgets/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:final_project/router/route_name.dart';

class Checkoutpage extends StatefulWidget {
  const Checkoutpage({super.key});

  @override
  State<Checkoutpage> createState() => _CheckoutpageState();
}

class _CheckoutpageState extends State<Checkoutpage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: AppColors.greendark),
        // leading: MyIconButton(
        //   icon: Icons.arrow_back,
        //   onPressed: () {
        //     Get.back();
        //   },
        // ),
        title: const Text('Checkout'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Divider(color: Colors.grey, thickness: 1),
            GapBox(10),
            const PriceRow(title: 'Order', value: '\$20.94'),
            GapBox(10),
            const PriceRow(title: 'Shipping', value: '\$5.00'),
            GapBox(10),
            const PriceRow(title: 'Total', value: '\$25.94'),
            GapBox(10),
            const Divider(color: Colors.grey, thickness: 2),
            CustomText(
              text: 'Payment Options',
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            GapBox(20),

            ListTileCash(
              imagePath: ProjectImages.visa,
              title: '****374653',
              isSelected: selectedIndex == 0,
              onTap: () {
                setState(() => selectedIndex = 0);

                Get.toNamed(MyRoutename.orderhistory);
              },
            ),

            GapBox(10),

            ListTileCash(
              imagePath: ProjectImages.cash,
              title: 'Cash on Delivery',
              isSelected: selectedIndex == 1,
              onTap: () {
                setState(() => selectedIndex = 1);
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.all(10),
                    content: const AlertBoxWidget(),
                  ),
                );
              },
            ),

            const Spacer(),
            CustomElevatedButton(
              label: 'Continue',
              bgColor: AppColors.greendark,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
