import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_eleveted_button.dart';
import 'package:final_project/custom_widgets/custom_text.dart';
import 'package:final_project/custom_widgets/custom_textformfield.dart';
import 'package:final_project/custom_widgets/gapbox.dart';
import 'package:flutter/material.dart';

class ForgetPage extends StatelessWidget {
  const ForgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Forget \nPassword?',
              color: AppColors.greendark,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),

            CustomTextFormField(
              labelText: 'Enter your Email address',
              hintText: 'Enter your Email address',
              prefixIcon: Icons.mail,
            ),

            CustomText(
              text:
                  ' We will send you a message to set or reset your new password',
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
    );
  }
}
