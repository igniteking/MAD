import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mad/screens/splash/splash2.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Splash2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFF2449),
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Center(child: Image.asset('assets/logo b&w.png')),
        ),
      ),
    );
  }
}
