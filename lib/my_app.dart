import 'package:flutteer_practice/bottom_bar.dart';
import 'package:flutteer_practice/grid_view.dart';
import 'package:flutteer_practice/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyAppBar(),
    );
  }
}
