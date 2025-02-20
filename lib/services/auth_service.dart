import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as models;
import 'package:flutter/material.dart';

class AuthService {
  final Client client =
      Client()
        ..setEndpoint('https://cloud.appwrite.io/v1') // Change this if needed
        ..setProject('6795f9da002a0eaf3da0'); // Your Project ID

  late final Account _account;

  AuthService() {
    _account = Account(client);
  }

  Future<models.User?> login(
    String email,
    String password,
    BuildContext context,
  ) async {
    try {
      await _account.createEmailPasswordSession(
        email: email,
        password: password,
      );
      final user = await _account.get();
      ShowSnackbar(context, "Login Successful! ${user.name}", isError: false);
      return user;
    } on AppwriteException catch (e) {
      ShowSnackbar(context, "Login Failed: ${e.message}", isError: true);
      return null;
    }
  }

  Future<models.User?> register(
    String email,
    String password,
    String name,
    BuildContext context,
  ) async {
    try {
      await _account.create(
        userId: ID.unique(),
        email: email,
        password: password,
        name: name,
      );
      return await login(email, password, context);
    } on AppwriteException catch (e) {
      ShowSnackbar(
        context,
        "Registration Failed: ${e.message}",
        isError: true,
      );
      return null;
    }
  }

  Future<void> logout(BuildContext context) async {
    try {
      await _account.deleteSession(sessionId: 'current');
      ShowSnackbar(context, "Logged out successfully!", isError: false);
    } catch (e) {
      ShowSnackbar(context, "Logout failed: $e", isError: true);
    }
  }

  void ShowSnackbar(
    BuildContext context,
    String message, {
    bool isError = false,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: TextStyle(color: Colors.white)),
        backgroundColor: isError ? Colors.red : Colors.green,
        duration: Duration(seconds: 3),
      ),
    );
  }
}
