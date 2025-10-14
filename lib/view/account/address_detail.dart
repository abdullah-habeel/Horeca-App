import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_eleveted_button.dart';
import 'package:final_project/custom_widgets/custom_textformfield.dart';
import 'package:final_project/custom_widgets/gapbox.dart';
import 'package:final_project/custom_widgets/icon_button.dart';
import 'package:flutter/material.dart';

class AddressDetailPage extends StatelessWidget {
  const AddressDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MyIconButton(icon: Icons.arrow_back, onPressed: () {}),
        title: Text('Address Details'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            CustomTextFormField(labelText: 'Zip Code'),
            CustomTextFormField(labelText: 'Address'),
            CustomTextFormField(labelText: 'City'),
            CustomTextFormField(labelText: 'State'),
            CustomTextFormField(labelText: 'Country'),
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
