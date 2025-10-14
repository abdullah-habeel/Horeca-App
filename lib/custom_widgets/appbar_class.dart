import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:final_project/custom_widgets/custom_images.dart';

class AppbarClass extends StatelessWidget {
  final Widget? body;

  const AppbarClass({super.key, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ✅ Drawer Section
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

      // ✅ AppBar Section
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: AppColors.greendark, // Drawer (menu) icon color
        ),
        title: Image.asset(
          ProjectImages.logotext,
          height: 40,
          fit: BoxFit.contain,
        ),
        actions: [
          PopupMenuButton<String>(
            icon: ClipOval(
              child: Image.asset(
                ProjectImages.abdullah,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            onSelected: (value) {
              // handle actions here
            },
            itemBuilder: (context) => const [
              PopupMenuItem(value: 'Profile', child: Text('View Profile')),
              PopupMenuItem(value: 'Settings', child: Text('Settings')),
              PopupMenuItem(value: 'Logout', child: Text('Logout')),
            ],
          ),
        ],
      ),

      // ✅ Dynamic body section
      body: SafeArea(
        child: body ?? const Center(child: Text('No contendgfhdhRt provided')),
      ),
    );
  }
}
