import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:final_project/custom_widgets/splash_widget.dart';
import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget {
  const Splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashWidget(
      title: 'Discover New Food \nBrands with our APP',
      imagePath: ProjectImages.onboarding2,
      buttonLabel: 'Next',
      onPressed: () {},
    );
  }
}
