import 'package:flutter/material.dart';

class ListTileCash extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool isSelected; // ✅ to track which tile is active
  final VoidCallback onTap;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const ListTileCash({
    super.key,
    required this.imagePath,
    required this.title,
    required this.isSelected,
    required this.onTap,
    this.borderRadius = 12,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSelected ? Colors.grey.shade200 : Colors.white,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelected ? Colors.green : Colors.grey.shade400,
              width: 1.8,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                imagePath,
                width: 36,
                height: 36,
                fit: BoxFit.contain,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                  color: isSelected ? Colors.black : Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
