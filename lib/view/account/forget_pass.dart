import 'package:flutter/material.dart';
import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_eleveted_button.dart';
import 'package:final_project/custom_widgets/custom_text.dart';
import 'package:final_project/custom_widgets/custom_textformfield.dart';
import 'package:final_project/custom_widgets/gapbox.dart';
import 'package:final_project/custom_widgets/custom_images.dart';

class ForgetPage extends StatelessWidget {
  const ForgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(ProjectImages.background, fit: BoxFit.cover),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Forget \nPassword?',
                        color: AppColors.greendark,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      GapBox(20),
                      CustomTextFormField(
                        labelText: 'Enter your Email address',
                        hintText: 'Enter your Email address',
                        prefixIcon: Icons.mail,
                      ),
                      GapBox(15),
                      CustomText(
                        text:
                            'We will send you a message to set or reset your new password',
                      ),
                      GapBox(25),
                      CustomElevatedButton(
                        label: 'Submit',
                        bgColor: AppColors.greendark,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
