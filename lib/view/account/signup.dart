import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_eleveted_button.dart';
import 'package:final_project/custom_widgets/custom_text.dart';
import 'package:final_project/custom_widgets/custom_textbutton.dart';
import 'package:final_project/custom_widgets/custom_textformfield.dart';
import 'package:final_project/custom_widgets/gapbox.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Create an \nAccount',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColors.greendark,
                ),
                CustomTextFormField(
                  labelText: 'Name',
                  hintText: 'Enter  your Name here',
                  prefixIcon: Icons.person,
                ),

                CustomTextFormField(
                  labelText: 'Phone',
                  hintText: 'Enter your Phone No.',
                  prefixIcon: Icons.call,
                ),

                CustomTextFormField(
                  labelText: 'Email',
                  hintText: 'Enter your Email here',
                  prefixIcon: Icons.email,
                ),

                CustomTextFormField(
                  labelText: 'Address',
                  hintText: 'Address',
                  prefixIcon: Icons.map,
                ),

                CustomTextFormField(
                  labelText: 'Password',
                  hintText: 'Password',
                  prefixIcon: Icons.lock,
                ),

                CustomTextFormField(
                  labelText: 'Confirm Password',
                  hintText: 'Confirm Password',
                  prefixIcon: Icons.lock,
                ),
                GapBox(20),

                CustomElevatedButton(
                  label: 'Create an Account',
                  bgColor: AppColors.greendark,
                  onPressed: () {},
                ),
                GapBox(25),

                Align(
                  alignment: Alignment.center,
                  child: CustomText(text: '_OR Continue with_'),
                ),
                GapBox(20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: ' I Already have an account'),
                    GapBox(20),
                    CustomTextButton(label: 'Login', onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
