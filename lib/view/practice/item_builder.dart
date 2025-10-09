import 'package:flutter/material.dart';

class ItemBuilderBasics extends StatelessWidget {
  const ItemBuilderBasics({super.key});

  @override
  Widget build(BuildContext context) {
    // A simple list of items
    final List<String> fruits = [
      'Apple',
      'Banana',
      'Cherry',
      'Mango',
      'Orange',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('ItemBuilder Practice')),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.favorite, color: Colors.red),
            title: Text(fruits[index]),
          );
        },
      ),
    );
  }
}
