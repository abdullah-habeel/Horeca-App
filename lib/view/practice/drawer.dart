import 'package:flutter/material.dart';

class DrawerAndProfileMenuDemo extends StatelessWidget {
  const DrawerAndProfileMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ✅ Left-side Drawer
      drawer: Drawer(
        child: ListView(
          children: const [
            // DrawerHeader(
            //   decoration: BoxDecoration(color: Colors.green),
            //   child: Text(
            //     'Main Menu',
            //     style: TextStyle(color: Colors.white, fontSize: 24),
            //   ),
            // ),
            ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ListTile(leading: Icon(Icons.logout), title: Text('Logout')),
          ],
        ),
      ),

      // ✅ App Bar with profile menu
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Dashboard'),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.account_circle, size: 30),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'profile',
                child: Text('View Profile'),
              ),
              const PopupMenuItem(value: 'settings', child: Text('Settings')),
              const PopupMenuItem(value: 'logout', child: Text('Logout')),
            ],
            onSelected: (value) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('$value selected'),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
          ),
        ],
      ),

      // ✅ Body content
      body: const Center(
        child: Text(
          'Welcome to Dashboard!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
