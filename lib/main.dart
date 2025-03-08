import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import 'package:mad/screens/auth/sign_in.dart';
import 'package:mad/screens/main/main_screen.dart';

void main() {
  Client client = Client();
  client.setProject('6795f9da002a0eaf3da0');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
      theme: ThemeData(
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android:
                CupertinoPageTransitionsBuilder(), // iOS-like transition
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
    );
  }
}
