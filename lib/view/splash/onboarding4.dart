import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:flutter/material.dart';

class Splash4 extends StatelessWidget {
  const Splash4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 88,
          width: 280,
          child: Image.asset(ProjectImages.logotext),
        ),
      ),
    );
  }
}
