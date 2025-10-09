import 'package:flutter/material.dart';

class LittleComplex extends StatelessWidget {
  const LittleComplex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Basic ListView")),
      body: ListView(
        children: const [
          ListTile(title: Text("Item 1")),
          ListTile(title: Text("Item 2")),
          ListTile(title: Text("Item 3")),
        ],
      ),
    );
  }
}
