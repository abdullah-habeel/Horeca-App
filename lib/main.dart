import 'package:final_project/router/route.dart';
import 'package:final_project/router/route_name.dart';
import 'package:final_project/view/paging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // getPages: Approutes.routes(),
      // initialRoute: MyRoutename.splash,
      home: const Paging(),
    );
  }
}
