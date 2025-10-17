import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:final_project/custom_widgets/custom_text.dart';
import 'package:final_project/custom_widgets/icon_button.dart';
import 'package:final_project/custom_widgets/listtileicon.dart';
import 'package:final_project/router/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: const Text('Setting'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(ProjectImages.abdullah),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CustomText(
                      text: 'Abdullah',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 4),
                    CustomText(text: 'abdullahredeye@gmail.com', fontSize: 14),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),

            TextTileIconWidget(
              title: 'Add Address',
              trailingIcon: Icons.arrow_forward_ios,
              isSelected: selectedIndex == 0,
              onTap: () {
                setState(() => selectedIndex = 0);
                Get.toNamed(MyRoutename.addressdetail);
              },
            ),
            TextTileIconWidget(
              title: 'Order History',
              trailingIcon: Icons.arrow_forward_ios,
              isSelected: selectedIndex == 1,
              onTap: () {
                setState(() => selectedIndex = 1);
                Get.toNamed(MyRoutename.orderhistory);
              },
            ),
            TextTileIconWidget(
              title: 'Logout',
              trailingIcon: Icons.arrow_forward_ios,
              isSelected: selectedIndex == 2,
              onTap: () {
                setState(() => selectedIndex = 2);
                Get.toNamed(MyRoutename.nointernet);
              },
            ),
          ],
        ),
      ),
    );
  }
}
