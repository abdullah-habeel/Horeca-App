import 'package:final_project/custom_widgets/searchtile.dart';
import 'package:flutter/material.dart';
import 'package:final_project/custom_widgets/appbar_class.dart';
import 'package:final_project/custom_widgets/bottom_navigation_bar.dart';
import 'package:final_project/custom_widgets/carousel_slider_widget.dart';
import 'package:final_project/custom_widgets/custom_color.dart';
import 'package:final_project/custom_widgets/custom_images.dart';
import 'package:final_project/custom_widgets/custom_text.dart';
import 'package:final_project/custom_widgets/floating_action_button.dart';
import 'package:final_project/custom_widgets/gapbox.dart';
import 'package:final_project/custom_widgets/gradant_container.dart';
import 'package:final_project/custom_widgets/image_inbuilder.dart';
import 'package:final_project/custom_widgets/list_tile_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBarClass(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
      ),

      body: Stack(
        children: [
          AppbarClass(
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchTile(),
                  MyListTile(
                    title: 'All Featured',
                    onFilter: () {},
                    onSort: () {},
                  ),
                  const CarouselSliderWidget(),
                  GapBox(10),

                  SizedBox(
                    height: 90,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      itemCount: 6,
                      separatorBuilder: (_, __) => const SizedBox(width: 12),
                      itemBuilder: (context, index) {
                        final items = [
                          {'path': ProjectImages.food1, 'label': 'Burger'},
                          {'path': ProjectImages.food2, 'label': 'Pizza'},
                          {'path': ProjectImages.food3, 'label': 'Pasta'},
                          {'path': ProjectImages.food1, 'label': 'Fries'},
                          {'path': ProjectImages.food2, 'label': 'Juice'},
                          {'path': ProjectImages.food3, 'label': 'Biryani'},
                        ];
                        final item = items[index];
                        return ListImage(
                          imagePath: item['path']!,
                          label: item['label'],
                        );
                      },
                    ),
                  ),
                  GapBox(15),
                  CustomText(
                    text: 'Ingredients with a top margin',
                    color: AppColors.greendark,
                  ),
                  GapBox(10),
                  GradiantContainer(
                    products: [
                      {
                        'image': ProjectImages.milk,
                        'title': 'Gazi Joghurt 3.5% 10Kg',
                        'subtitle':
                            'Neque porro quisquam est qui dolorem ipsum quia',
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
                    ],
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 150,
            right: MediaQuery.of(context).size.width / 2 - 200,

            child: FAB(icon: Icons.arrow_forward, onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
