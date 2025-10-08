import 'package:final_project/custom_widgets/bottom_curve_widget.dart';
import 'package:final_project/custom_widgets/checkbox.dart';
import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_eleveted_button.dart';
import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:final_project/custom_widgets/custom_text.dart';
import 'package:final_project/custom_widgets/custom_textbutton.dart';
import 'package:final_project/custom_widgets/custom_textformfield.dart';
import 'package:final_project/custom_widgets/gapbox.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomCurveWidget(),

      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(ProjectImages.background, fit: BoxFit.cover),
          ),

          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                        text: 'Welcome \nBack!',
                        color: AppColors.greendark,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GapBox(20),
                    CustomTextFormField(
                      labelText: 'Username or Email',
                      hintText: 'Username or Email',
                      prefixIcon: Icons.person,
                    ),
                    GapBox(15),
                    CustomTextFormField(
                      labelText: 'Password',
                      hintText: 'Enter Password here',
                      prefixIcon: Icons.lock,
                      obscureText: true,
                    ),
                    GapBox(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCheckbox(
                          value: rememberMe,
                          label: "Remember Me",
                          textColor: Colors.green.shade900,
                          activeColor: Colors.green,
                          onChanged: (val) {
                            setState(() {
                              rememberMe = val ?? false;
                            });
                          },
                        ),
                        CustomTextButton(
                          label: 'Forget Password',
                          onPressed: () {},
                        ),
                      ],
                    ),
                    GapBox(20),
                    CustomElevatedButton(
                      label: 'Login',
                      bgColor: AppColors.greendark,
                      onPressed: () {},
                    ),
                    GapBox(15),
                    const CustomText(text: '_OR Continue with'),
                    GapBox(15),
                    const CustomText(text: 'Create an Account'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
