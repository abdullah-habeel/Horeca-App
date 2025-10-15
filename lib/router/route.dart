import 'package:final_project/router/route_name.dart';
import 'package:final_project/view/account/forget_pass.dart';
import 'package:final_project/view/account/login.dart';
import 'package:final_project/view/account/signup.dart';
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
  ];
}
