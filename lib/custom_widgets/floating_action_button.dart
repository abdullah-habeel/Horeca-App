import 'package:flutter/material.dart';

class FAB extends StatelessWidget {
  final IconData icon; // icon to display
  final VoidCallback onPressed; // function when tapped
  final Color backgroundColor; // fixed background color
  final Color iconColor; // color of the icon
  final String? tooltip; // optional hint text
  final double size; // overall size of the button

  const FAB({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor = const Color(0xFF4CAF50), // green by default
    this.iconColor = Colors.white,
    this.tooltip,
    this.size = 40.0, // button size
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: backgroundColor,
        tooltip: tooltip,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Icon(icon, color: iconColor, size: size * 0.45),
      ),
    );
  }
}
