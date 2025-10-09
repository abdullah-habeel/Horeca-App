import 'package:flutter/material.dart';

class LabeledCheckboxClass extends StatefulWidget {
  final String label;

  const LabeledCheckboxClass({super.key, required this.label});

  @override
  State<LabeledCheckboxClass> createState() => _LabeledCheckboxClassState();
}

class _LabeledCheckboxClassState extends State<LabeledCheckboxClass> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.label),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
