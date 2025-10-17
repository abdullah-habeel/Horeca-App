import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_eleveted_button.dart';
import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:final_project/custom_widgets/custom_textformfield.dart';
import 'package:final_project/custom_widgets/gapbox.dart';
import 'package:final_project/custom_widgets/icon_button.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: MyIconButton(icon: Icons.arrow_back, onPressed: () {}),
        title: Text('Setting'),
        leading: BackButton(),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage(ProjectImages.abdullah),
            ),
            GapBox(15),
            CustomTextFormField(labelText: 'Full Name', hintText: 'Abdullah'),
            CustomTextFormField(
              labelText: 'Phone Number',
              hintText: '032251****',
            ),
            CustomTextFormField(
              labelText: 'Email Address',
              hintText: 'abdullah@gmail.com',
            ),
            CustomTextFormField(labelText: 'Password', hintText: '*****'),
            GapBox(15),
            CustomElevatedButton(
              label: 'Save',
              bgColor: AppColors.greenlight,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
