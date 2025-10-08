import 'package:flutter/material.dart';
import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_eleveted_button.dart';
import 'package:final_project/custom_widgets/custom_text.dart';
import 'package:final_project/custom_widgets/gapbox.dart';
import 'package:final_project/custom_widgets/custom_images.dart';

class SplashWidget extends StatelessWidget {
  final String title;
  final String imagePath;
  final String buttonLabel;
  final VoidCallback onPressed;

  const SplashWidget({
    super.key,
    required this.title,
    required this.imagePath,
    required this.buttonLabel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Title
          CustomText(
            text: title,
            color: AppColors.greendark,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),

          // Image
          SizedBox(height: 300, width: 650, child: Image.asset(imagePath)),

          // Gap
          const GapBox(20),

          // Button
          CustomElevatedButton(
            label: buttonLabel,
            bgColor: AppColors.greendark,
            onPressed: onPressed,
          ),

          const Spacer(),

          // Bottom curve
          SizedBox(
            height: 140,
            width: 375,
            child: Image.asset(ProjectImages.bottomCurve),
          ),
        ],
      ),
    );
  }
}
