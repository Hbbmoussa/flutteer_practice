// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutteer_practice/pages/account.dart';
import 'package:flutteer_practice/pages/home_page.dart';
import 'package:flutteer_practice/pages/message.dart';
import 'package:flutteer_practice/pages/settings.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    MyHomePage(title: "Hello"),
    UserMessage(),
    UserSettings(),
    UserAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          //If the bottom navigation bar items are more than 4.
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'message'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}
