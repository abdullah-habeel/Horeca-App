import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final IconData? icon;

  const CustomTextButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.textColor = Colors.blue,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: icon == null
          ? Text(
              label,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: textColor,
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, color: textColor, size: fontSize),
                const SizedBox(width: 6),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: textColor,
                  ),
                ),
              ],
            ),
    );
  }
}
