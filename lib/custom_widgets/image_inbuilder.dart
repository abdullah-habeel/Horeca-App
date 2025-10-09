import 'package:flutter/material.dart';

class ListImage extends StatelessWidget {
  final String imagePath;

  const ListImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(imagePath, width: 50, height: 50, fit: BoxFit.cover),
    );
  }
}
