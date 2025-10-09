import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ExpansionTile(
              title: const Text('Home'),
              children: const [
                ListTile(title: Text('Sub Home 1')),
                ListTile(title: Text('Sub Home 2')),
              ],
            ),
            ExpansionTile(
              title: const Text('Settings'),
              children: const [
                ListTile(title: Text('Profile Settings')),
                ListTile(title: Text('App Settings')),
              ],
            ),
            ExpansionTile(
              title: const Text('Account'),
              children: const [
                ListTile(title: Text('Link Account')),
                ListTile(title: Text('Share Account')),
              ],
            ),
            const ListTile(title: Text('Logout')),
          ],
        ),
      ),

      // AppBar with profile icon
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<String>(
            icon: ClipOval(
              child: Image.asset(
                ProjectImages.onboarding1,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            onSelected: (value) {},
            itemBuilder: (context) => const [
              PopupMenuItem(value: 'Profile', child: Text('View Profile')),
              PopupMenuItem(value: 'Settings', child: Text('Settings')),
              PopupMenuItem(value: 'Logout', child: Text('Logout')),
            ],
          ),
        ],
      ),

      body: const SafeArea(child: Center(child: Text('Home Page Content'))),
    );
  }
}
