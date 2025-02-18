import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Home"),
      leading: Image.asset("logo.png"),
    );
  }
}
