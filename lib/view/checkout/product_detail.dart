import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:final_project/custom_widgets/custom_text.dart';
import 'package:final_project/custom_widgets/icon_button.dart';
import 'package:final_project/router/route_name.dart';
import 'package:final_project/view/checkout/checkout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: AppColors.greendark),
        actions: [
          MyIconButton(
            icon: Icons.shopping_cart_checkout_outlined,
            onPressed: () {
              Get.toNamed(MyRoutename.checkoutpage);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            width: 300,
            child: Image.asset(ProjectImages.milk),
          ),
          CustomText(
            text: 'Brand: Weihenstephan',
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
