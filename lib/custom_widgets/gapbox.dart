import 'package:flutter/material.dart';

class GapBox extends StatelessWidget {
  final double size;

  const GapBox(this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size);
  }
}
