import 'package:final_project/router/route_name.dart';
import 'package:final_project/view/account/forget_pass.dart';
import 'package:final_project/view/account/login.dart';
import 'package:final_project/view/account/signup.dart';
// import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Approutes {
  static routes() => [
    GetPage(name: MyRoutename.login, page: () => const LoginPage()),
    GetPage(name: MyRoutename.signup, page: () => const SignupPage()),
    GetPage(name: MyRoutename.forget, page: () => const ForgetPage()),
  ];
}
