import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MySquaree extends StatelessWidget {
  final String child;

  const MySquaree({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.deepPurple,
        child: Center(
            child: Text(
          child,
          style: TextStyle(fontSize: 24),
        )),
      ),
    );
  }
}
