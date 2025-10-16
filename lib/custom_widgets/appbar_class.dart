import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:get/get.dart';
import 'package:final_project/router/route_name.dart';

class AppbarClass extends StatelessWidget {
  final Widget? body;

  const AppbarClass({super.key, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            ExpansionTile(
              title: Text('Home'),
              children: [
                ListTile(title: Text('Sub Home 1')),
                ListTile(title: Text('Sub Home 2')),
              ],
            ),
            ExpansionTile(
              title: Text('Settings'),
              children: [
                ListTile(title: Text('Profile Settings')),
                ListTile(title: Text('App Settings')),
              ],
            ),
            ExpansionTile(
              title: Text('Account'),
              children: [
                ListTile(title: Text('Link Account')),
                ListTile(title: Text('Share Account')),
              ],
            ),
            ListTile(title: Text('Logout')),
          ],
        ),
      ),

      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.greendark),
        title: Image.asset(
          ProjectImages.logotext,
          height: 40,
          fit: BoxFit.contain,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(MyRoutename.profile);
              },
              child: ClipOval(
                child: Image.asset(
                  ProjectImages.abdullah,
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: body ?? const Center(child: Text('No content provided')),
      ),
    );
  }
}
