import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:flutter/material.dart';

class Prac extends StatelessWidget {
  const Prac({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      child: Image.asset(ProjectImages.onboarding1, fit: BoxFit.cover),
    );
  }
}
