import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:flutter/material.dart';

class BottomCurveWidget extends StatelessWidget {
  const BottomCurveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 375,
      child: Image.asset(ProjectImages.bottomCurve, fit: BoxFit.cover),
    );
  }
}
