import 'package:final_project/custom_widgets/appbar_class.dart';
import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppbarClass(
      body: Center(
        child: SizedBox(
          height: 250,
          width: 350,
          child: Image.asset(ProjectImages.error),
        ),
      ),
    );
  }
}
