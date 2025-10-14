import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:flutter/material.dart';

class ListImage extends StatelessWidget {
  final String imagePath;
  final String? label; // 👈 Optional text

  const ListImage({super.key, required this.imagePath, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipOval(
          child: Image.asset(
            imagePath,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        if (label != null) ...[
          const SizedBox(height: 5),
          Text(
            label!,
            style: const TextStyle(fontSize: 12, color: AppColors.greendark),
          ),
        ],
      ],
    );
  }
}
