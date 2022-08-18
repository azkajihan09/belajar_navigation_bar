import 'package:belajar_navigation_bar/widget/widget023.dart';
import 'package:belajar_navigation_bar/widget/widget028.dart';
import 'package:belajar_navigation_bar/widget/widget029.dart';
import 'package:belajar_navigation_bar/widget/widget030.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Widget028(),
      // home: Widget029(),
      // home: Widget023(),
      home: Widget030(),
    );
  }
}
