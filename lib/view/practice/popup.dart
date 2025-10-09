import 'package:final_project/view/practice/popup/checkbox_widget.dart';
import 'package:flutter/material.dart';

class FilterExample extends StatelessWidget {
  const FilterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Checkbox Example")),
      body: Column(
        children: const [
          LabeledCheckboxClass(label: "Snack"),
          LabeledCheckboxClass(label: "Halal"),
          LabeledCheckboxClass(label: "Frozen"),
          LabeledCheckboxClass(label: "Fries"),
        ],
      ),
    );
  }
}
