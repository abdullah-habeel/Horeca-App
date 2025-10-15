import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:final_project/custom_widgets/splash_widget.dart';
import 'package:final_project/router/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash1 extends StatelessWidget {
  const Splash1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SplashWidget(
        title: 'Get Food Delivered \nto Your Doorstep',
        imagePath: ProjectImages.onboarding1,
        buttonLabel: 'next',
        onPressed: () {
          Get.toNamed(MyRoutename.splash2);
        },
      ),
    );
  }
}
