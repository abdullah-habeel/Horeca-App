import 'package:flutter/material.dart';
import 'package:final_project/custom_widgets/custom_color.dart';

class BottomNavBarClass extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBarClass({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<BottomNavBarClass> createState() => _BottomNavBarClassState();
}

class _BottomNavBarClassState extends State<BottomNavBarClass> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      selectedItemColor: AppColors.greendark,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          activeIcon: Icon(Icons.store),
          label: 'Prodcucts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          activeIcon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          activeIcon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          activeIcon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}
