//import 'package:final_project/view/practice.dart';
// import 'package:final_project/view/home/home_page.dart';
// import 'package:final_project/view/home/home_page1.dart';
// import 'package:final_project/view/practice/gridview_builder.dart';
// import 'package:final_project/view/practice/item_builder.dart';
// import 'package:final_project/view/practice/list_view.dart/basic_listview.dart';
// import 'package:final_project/view/practice/list_view.dart/listview_builder.dart';
import 'package:final_project/view/practice/popup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FilterExample(),
    );
  }
}
