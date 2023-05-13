import 'package:flutteer_practice/pages/my_square.dart';
import 'package:flutter/material.dart';

import 'my_circle.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List _post = ['post 1', 'post 2', 'post 3', 'post 4'];
  final List _histories = ['history 1', 'history 2', 'history 3', 'history 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
          flex: 1,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _histories.length,
              itemBuilder: (context, index) {
                return MyCircle(
                  history: _histories[index],
                );
              })),
      Expanded(
        flex: 3,
        child: ListView.builder(
            itemCount: _post.length,
            itemBuilder: (context, index) {
              return MySquaree(
                child: _post[index],
              );
            }),
      ),
    ]));
  }
}
