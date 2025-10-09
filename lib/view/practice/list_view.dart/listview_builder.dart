import 'package:flutter/material.dart';

class ListViewBuilderExample extends StatelessWidget {
  const ListViewBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      "Apple",
      "Banana",
      "Mango",
      "Cherry",
      "Peach",
      "Watermelon",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("ListView.builder Example")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            elevation: 2,
            child: ListTile(
              leading: const Icon(Icons.shopping_bag, color: Colors.green),
              title: Text(items[index]),
              subtitle: Text("Tap to buy ${items[index]}"),
              trailing: const Icon(Icons.arrow_forward_ios),

              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Clicked on ${items[index]}'),
                    behavior: SnackBarBehavior.floating,
                    margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
