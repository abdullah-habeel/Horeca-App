import 'package:final_project/custom_widgets/list_tile_class.dart';
import 'package:final_project/custom_widgets/searchtile.dart';
import 'package:flutter/material.dart';
import 'package:final_project/custom_widgets/appbar_class.dart';
import 'package:final_project/custom_widgets/bottom_navigation_bar.dart';
import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/gradant_container.dart';
import 'package:final_project/custom_widgets/custom_images.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _currentIndex = 1;

  final List<Map<String, dynamic>> products = [
    {
      'image': ProjectImages.milk,
      'title': 'Gazi Joghurt 3.5% 10Kg',
      'subtitle': 'Neque porro quisquam est qui dolorem ipsum quia',
      'price': '\$3.49 per kg',
      'rating': 4.5,
      'reviews': 56890,
    },
    {
      'image': ProjectImages.chicken,
      'title': 'Fresh Cheese 2Kg',
      'subtitle': 'Delicious and creamy cheese for cooking',
      'price': '\$5.20 per kg',
      'rating': 4.0,
      'reviews': 25300,
    },
    {
      'image': ProjectImages.milk,
      'title': 'Gazi Joghurt 3.5% 10Kg',
      'subtitle': 'Neque porro quisquam est qui dolorem ipsum quia',
      'price': '\$3.49 per kg',
      'rating': 4.5,
      'reviews': 56890,
    },
    {
      'image': ProjectImages.milk,
      'title': 'Gazi Joghurt 3.5% 10Kg',
      'subtitle': 'Neque porro quisquam est qui dolorem ipsum quia',
      'price': '\$3.49 per kg',
      'rating': 4.5,
      'reviews': 56890,
    },
    {
      'image': ProjectImages.milk,
      'title': 'Gazi Joghurt 3.5% 10Kg',
      'subtitle': 'Neque porro quisquam est qui dolorem ipsum quia',
      'price': '\$3.49 per kg',
      'rating': 4.5,
      'reviews': 56890,
    },
    {
      'image': ProjectImages.milk,
      'title': 'Gazi Joghurt 3.5% 10Kg',
      'subtitle': 'Neque porro quisquam est qui dolorem ipsum quia',
      'price': '\$3.49 per kg',
      'rating': 4.5,
      'reviews': 56890,
    },
    {
      'image': ProjectImages.milk,
      'title': 'Gazi Joghurt 3.5% 10Kg',
      'subtitle': 'Neque porro quisquam est qui dolorem ipsum quia',
      'price': '\$3.49 per kg',
      'rating': 4.5,
      'reviews': 56890,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBarClass(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: AppbarClass(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchTile(),
              MyListTile(
                title: '125 Items Found',
                onFilter: () {},
                onSort: () {},
              ),
              const SizedBox(height: 16),

              GradiantContainer(products: products),
            ],
          ),
        ),
      ),
    );
  }
}
