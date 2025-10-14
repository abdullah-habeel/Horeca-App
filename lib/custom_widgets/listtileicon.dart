import 'package:flutter/material.dart';

class TextTileIconWidget extends StatelessWidget {
  final String title;
  final IconData trailingIcon;
  final TextStyle? textStyle;
  final Color? iconColor;
  final bool isSelected; // NEW: for green border state
  final VoidCallback? onTap;

  const TextTileIconWidget({
    super.key,
    required this.title,
    required this.trailingIcon,
    this.textStyle,
    this.iconColor,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.green.withOpacity(0.2),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isSelected ? Colors.green : Colors.transparent,
              width: 2,
            ),
          ),
          child: ListTile(
            title: Text(
              title,
              style:
                  textStyle ??
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Icon(trailingIcon, color: iconColor ?? Colors.grey),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 4,
            ),
          ),
        ),
      ),
    );
  }
}
