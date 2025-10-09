import 'package:flutter/material.dart';
import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_eleveted_button.dart';
import 'package:final_project/custom_widgets/custom_text.dart';
import 'package:final_project/custom_widgets/gapbox.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 🟢 Title text
          CustomText(
            text: title,
            color: AppColors.greendark,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),

          const GapBox(20),

          // 🖼️ Image (kept)
          SizedBox(height: 300, width: 650, child: Image.asset(imagePath)),

          const GapBox(30),

          // 🟢 Button
          CustomElevatedButton(
            label: buttonLabel,
            bgColor: AppColors.greendark,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
