import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sporttask/config/size-config.dart';
import 'package:sporttask/constants/app_images.dart';
import 'package:sporttask/constants/widgets/custom_background.dart';
import 'package:sporttask/modules/home/profile_screen.dart';
import 'package:sporttask/modules/home/settings_screen.dart';
import 'package:sporttask/modules/home/widgets/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    void onTabTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    final List<Widget> _children = [
      const ProfileScreen(),
      Container(),
      Container(),
      const SettingsScreen(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNav(_currentIndex, onTabTapped),
    );
  }
}
