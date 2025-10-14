// import 'package:final_project/view/account/forget_pass.dart';
import 'package:final_project/view/account/address_detail.dart';
import 'package:final_project/view/account/error404.dart';
import 'package:final_project/view/account/forget_pass.dart';
import 'package:final_project/view/account/login.dart';
import 'package:final_project/view/account/no_internet.dart';
import 'package:final_project/view/account/not_found.dart';
import 'package:final_project/view/account/order_history.dart';
import 'package:final_project/view/account/profile.dart';
import 'package:final_project/view/account/setting.dart';
import 'package:final_project/view/account/signup.dart';
import 'package:final_project/view/checkout/checkout.dart';
import 'package:final_project/view/home/home_page.dart';
import 'package:final_project/view/home/product.dart';
// import 'package:final_project/view/account/signup.dart';
// import 'package:final_project/view/checkout/checkout.dart';
// import 'package:final_project/view/home/home_page.dart';
// import 'package:final_project/view/home/product.dart';
import 'package:final_project/view/splash/onboarding1.dart';
import 'package:final_project/view/splash/onboarding2.dart';
import 'package:final_project/view/splash/onboarding3.dart';
import 'package:final_project/view/splash/onboarding4.dart';
import 'package:flutter/material.dart';
// import 'package:final_project/custom_widgets/bottom_curve_widget.dart';

class Paging extends StatefulWidget {
  const Paging({super.key});

  @override
  State<Paging> createState() => _PagingState();
}

class _PagingState extends State<Paging> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = const [
    Splash1(),
    Splash2(),
    Splash3(),
    Splash4(),
    LoginPage(),
    SignupPage(),
    ForgetPage(),
    HomePage(),
    ProductPage(),
    Checkoutpage(),
    ProfilePage(),
    SettingPage(),
    AddressDetailPage(),
    OrderHistory(),
    NotFoundPage(),
    ErrorPage(),
    NoInternetPage(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            children: _pages,
          ),

          if (_currentPage < 3)
            Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: _currentPage == index ? 16 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: _currentPage == index ? Colors.green : Colors.grey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
