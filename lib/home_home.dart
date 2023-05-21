import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codes/account.dart';
import 'package:flutter_codes/activity.dart';
import 'package:flutter_codes/home.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeHome extends StatefulWidget {
  const HomeHome({super.key});

  @override
  State<HomeHome> createState() => _HomeHomeState();
}

class _HomeHomeState extends State<HomeHome> {
  List pages = [
    const HomePage(),
    const Activity(),
    const Account(),
  ];

  int current = 0;

  onBat(int index) {
    setState(() {
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current],
      bottomNavigationBar: GNav(
          selectedIndex: current,
          onTabChange: onBat,
          duration: const Duration(milliseconds: 200),
          style: GnavStyle.google,
          activeColor: Colors.blue,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.star,
              text: 'Activity',
            ),
            GButton(
              icon: Icons.person,
              text: 'Account',
            )
          ]),
    );
  }
}
