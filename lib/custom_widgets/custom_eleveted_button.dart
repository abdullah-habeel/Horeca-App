import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color bgColor;
  final Color textColor;
  final double borderRadius;
  final double elevation;
  final IconData? icon;

  const CustomElevatedButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.bgColor = Colors.blue,
    this.textColor = Colors.white,
    this.borderRadius = 0,
    this.elevation = 2,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: textColor,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        ),
        onPressed: onPressed,
        child: icon == null
            ? Text(label, style: TextStyle(fontSize: 16))
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, size: 20),
                  const SizedBox(width: 8),
                  Text(label, style: TextStyle(fontSize: 16)),
                ],
              ),
      ),
    );
  }
}
