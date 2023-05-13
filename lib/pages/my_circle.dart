import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  final String history;

  const MyCircle({required this.history});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        child: Center(
            child: Text(
          history,
          style: TextStyle(fontSize: 16, color: Colors.black),
        )),
      ),
    );
  }
}
