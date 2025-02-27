import 'package:flutter/material.dart';
import 'package:mad/components/bottom_navbar.dart';
import 'package:mad/screens/home/home.dart';
import 'package:mad/screens/profile/profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    Scaffold(body: Center(child: Text("Activity Page"))),
    Scaffold(body: Center(child: Text("Notifications Page"))),
    ProfilePage(),
  ];

  void onNavBarItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBarRaisedInsetFb1(
        onNavBarItemTapped: onNavBarItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
