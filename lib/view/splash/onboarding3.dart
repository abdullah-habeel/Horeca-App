import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:final_project/custom_widgets/splash_widget.dart';
import 'package:flutter/material.dart';

class Splash3 extends StatelessWidget {
  const Splash3({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashWidget(
      title: 'Experience Convenient \nand Fast Food Delivery\nWith Our App',
      imagePath: ProjectImages.onboarding3,
      buttonLabel: 'Next',
      onPressed: () {},
    );
  }
}
