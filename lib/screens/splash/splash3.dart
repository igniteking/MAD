import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mad/screens/auth/sign_in.dart';

class Splash3 extends StatefulWidget {
  const Splash3({super.key});

  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignInScreen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Moves elements apart
            children: [
              SizedBox(height: 70), // Pushes the top image down
              Image.asset('assets/logo red.png'), // Logo at the top
              Spacer(), // Pushes the bottom image down
              Image.asset('assets/man.png'), // Man at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
