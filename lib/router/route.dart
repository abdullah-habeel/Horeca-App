import 'package:final_project/router/route_name.dart';
import 'package:final_project/view/account/error404.dart';
import 'package:final_project/view/account/forget_pass.dart';
import 'package:final_project/view/account/login.dart';
import 'package:final_project/view/account/order_history.dart';
import 'package:final_project/view/account/profile.dart';
import 'package:final_project/view/account/signup.dart';
import 'package:final_project/view/checkout/checkout.dart';
import 'package:final_project/view/home/home_page.dart';
import 'package:final_project/view/home/product.dart';
import 'package:final_project/view/splash/onboarding1.dart';
import 'package:final_project/view/splash/onboarding2.dart';
import 'package:final_project/view/splash/onboarding3.dart';
import 'package:final_project/view/splash/onboarding4.dart';
// import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Approutes {
  static routes() => [
    GetPage(name: MyRoutename.splash1, page: () => const Splash1()),
    GetPage(name: MyRoutename.splash2, page: () => const Splash2()),
    GetPage(name: MyRoutename.splash3, page: () => const Splash3()),
    GetPage(name: MyRoutename.splash4, page: () => const Splash4()),

    GetPage(name: MyRoutename.login, page: () => const LoginPage()),
    GetPage(name: MyRoutename.signup, page: () => const SignupPage()),
    GetPage(name: MyRoutename.forget, page: () => const ForgetPage()),
    GetPage(name: MyRoutename.homepage, page: () => const HomePage()),
    GetPage(name: MyRoutename.profile, page: () => const ProfilePage()),
    GetPage(name: MyRoutename.productpage, page: () => const ProductPage()),
    GetPage(name: MyRoutename.checkoutpage, page: () => const Checkoutpage()),
    GetPage(name: MyRoutename.error, page: () => const ErrorPage()),
    GetPage(name: MyRoutename.orderhistory, page: () => const OrderHistory()),
  ];
}
