import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import 'package:mad/auth/auth.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Appwrite client
  Client client = Client()
      .setEndpoint("https://cloud.appwrite.io/v1") // Replace with your endpoint
      .setProject("6795f9da002a0eaf3da0"); // Replace with your project ID
  Account account = Account(client);

  runApp(MyApp(account: account));
}

class MyApp extends StatelessWidget {
  final Account account;

  const MyApp({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MAD',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEEF1F8),
        primarySwatch: Colors.blue,
        fontFamily: "Intel",
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(foregroundColor: Colors.white),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          errorStyle: TextStyle(height: 0),
          border: defaultInputBorder,
          enabledBorder: defaultInputBorder,
          focusedBorder: defaultInputBorder,
          errorBorder: defaultInputBorder,
        ),
      ),
      home: AuthScreen(), // Pass the Account object to SignInScreen
    );
  }
}

const defaultInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(16)),
  borderSide: BorderSide(
    color: Color(0xFFDEE3F2),
    width: 1,
  ),
);
