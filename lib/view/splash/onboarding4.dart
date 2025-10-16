import 'package:final_project/custom_widgets/custom_eleveted_button.dart';
import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:final_project/router/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash4 extends StatelessWidget {
  const Splash4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),

            Center(
              child: SizedBox(
                height: 88,
                width: 280,
                child: Image.asset(ProjectImages.logotext),
              ),
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: CustomElevatedButton(
                label: 'Continue',
                bgColor: AppColors.greendark,
                onPressed: () {
                  Get.toNamed(MyRoutename.login);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
