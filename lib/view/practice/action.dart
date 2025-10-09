import 'package:flutter/material.dart';

class ActionDemo extends StatelessWidget {
  const ActionDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Action'),
        backgroundColor: Colors.green,
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.account_circle),
            onSelected: (value) {
              print('You selected: $value');
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'Profile',
                child: Text('View Profile'),
              ),
              const PopupMenuItem(value: 'Settings', child: Text('Settings')),
              const PopupMenuItem(value: 'Logout', child: Text('Logout')),
            ],
          ),
        ],
      ),

      body: const Center(child: Text('Body Content')),
    );
  }
}
