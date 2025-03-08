import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mad/screens/splash/splash3.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Splash3()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Center(child: Image.asset('assets/logo red.png')),
        ),
      ),
    );
  }
}
