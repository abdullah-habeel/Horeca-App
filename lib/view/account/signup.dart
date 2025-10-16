import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_eleveted_button.dart';
import 'package:final_project/custom_widgets/custom_text.dart';
import 'package:final_project/custom_widgets/custom_textbutton.dart';
import 'package:final_project/custom_widgets/custom_textformfield.dart';
import 'package:final_project/custom_widgets/gapbox.dart';
import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:final_project/router/route_name.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(ProjectImages.background, fit: BoxFit.cover),
            ),
            SingleChildScrollView(
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
                      GapBox(15),
                      CustomTextFormField(
                        labelText: 'Name',
                        hintText: 'Enter your Name here',
                        prefixIcon: Icons.person,
                      ),
                      GapBox(10),
                      CustomTextFormField(
                        labelText: 'Phone',
                        hintText: 'Enter your Phone No.',
                        prefixIcon: Icons.call,
                      ),
                      GapBox(10),
                      CustomTextFormField(
                        labelText: 'Email',
                        hintText: 'Enter your Email here',
                        prefixIcon: Icons.email,
                      ),
                      GapBox(10),
                      CustomTextFormField(
                        labelText: 'Address',
                        hintText: 'Address',
                        prefixIcon: Icons.map,
                      ),
                      GapBox(10),
                      CustomTextFormField(
                        labelText: 'Password',
                        hintText: 'Password',
                        prefixIcon: Icons.lock,
                        obscureText: true,
                      ),
                      GapBox(10),
                      CustomTextFormField(
                        labelText: 'Confirm Password',
                        hintText: 'Confirm Password',
                        prefixIcon: Icons.lock,
                        obscureText: true,
                      ),
                      GapBox(20),
                      CustomElevatedButton(
                        label: 'Create an Account',
                        bgColor: AppColors.greendark,
                        onPressed: () {
                          Get.toNamed(MyRoutename.homepage);
                        },
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
                          CustomText(text: 'I already have an account'),
                          GapBox(10),
                          CustomTextButton(
                            label: 'Login',
                            onPressed: () {
                              Get.toNamed(MyRoutename.homepage);
                            },
                          ),
                        ],
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
