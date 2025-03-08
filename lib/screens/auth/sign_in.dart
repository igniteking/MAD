import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mad/screens/home/home.dart';
import 'package:mad/services/auth_service.dart';
import 'package:appwrite/models.dart' as models;

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final AuthService _authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  models.User? _loggedInUser;

  void _login() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final user = await _authService.login(email, password, context);

    if (user != null) {
      setState(() => _loggedInUser = user);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
  }

  void _register() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final name = _nameController.text.trim();
    final user = await _authService.register(email, password, name, context);

    if (user != null) {
      setState(() => _loggedInUser = user);
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  void _logout() async {
    await _authService.logout(context);
    setState(() => _loggedInUser = null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFEEE9FB),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Here To Get \nWelcome!",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Phone Number or Email',
                  labelStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(
                    EdgeInsets.only(
                      top: 25.0,
                      left: 35,
                      right: 35,
                      bottom: 25.0,
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.all(Color(0xFFFF2449)),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: _login,
                child: Text(
                  'Sign in',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Color(0xFFF1F6FB), // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 2, // Subtle shadow
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  minimumSize: const Size(
                    double.infinity,
                    54,
                  ), // Full-width button
                ),
                onPressed: () {
                  print("Login in with Google");
                  // Triggered when the button is pressed
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset("assets/google.png", width: 20),
                        ),
                      ],
                    ),
                    const SizedBox(width: 70),
                    Center(
                      child: Text(
                        'Login with Twitter',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2E3E5C),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Color(0xFFF1F6FB), // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 2, // Subtle shadow
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  minimumSize: const Size(
                    double.infinity,
                    54,
                  ), // Full-width button
                ),
                onPressed: () {
                  print("Login in with twitter");
                  // Triggered when the button is pressed
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset("assets/facebook.png", width: 20),
                        ),
                      ],
                    ),
                    const SizedBox(width: 70),
                    Center(
                      child: Text(
                        'Login with Facebook',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2E3E5C),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Color(0xFFF1F6FB), // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 2, // Subtle shadow
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  minimumSize: const Size(
                    double.infinity,
                    54,
                  ), // Full-width button
                ),
                onPressed: () {
                  print("Login in with twitter");
                  // Triggered when the button is pressed
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset("assets/twitter.png", width: 20),
                        ),
                      ],
                    ),
                    const SizedBox(width: 70),
                    Center(
                      child: Text(
                        'Login with Twitter',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2E3E5C),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
