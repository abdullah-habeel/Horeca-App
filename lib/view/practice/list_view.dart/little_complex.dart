import 'package:flutter/material.dart';

class BasicListViewExample extends StatelessWidget {
  const BasicListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Basic ListView")),
      body: ListView.builder(
        itemCount: 10, // total items
        itemBuilder: (context, index) {
          return ListTile(title: Text('Item $index'));
        },
      ),
    );
  }
}
