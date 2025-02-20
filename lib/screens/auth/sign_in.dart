import 'package:flutter/material.dart';
import 'package:mad/screens/home/home.dart';
import 'package:mad/services/auth_service.dart';
import 'package:appwrite/models.dart' as models;

class SignInScreen extends StatefulWidget {
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _login, child: Text('Login')),
            ElevatedButton(onPressed: _register, child: Text('Register')),
            ElevatedButton(onPressed: _logout, child: Text('Logout')),
          ],
        ),
      ),
    );
  }
}
