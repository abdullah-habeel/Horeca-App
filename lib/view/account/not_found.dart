import 'package:final_project/custom_widgets/appbar_class.dart';
import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_eleveted_button.dart';
import 'package:final_project/custom_widgets/custom_text.dart';
import 'package:final_project/custom_widgets/gapbox.dart';
import 'package:final_project/custom_widgets/list_tile_class.dart';
import 'package:final_project/custom_widgets/searchtile.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppbarClass(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SearchTile(),
            MyListTile(title: 'All Featured', onFilter: () {}, onSort: () {}),
            GapBox(150),
            CustomText(
              text: 'Not Found',
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            GapBox(15),
            CustomElevatedButton(
              label: 'Search Again',
              bgColor: AppColors.greenlight,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
