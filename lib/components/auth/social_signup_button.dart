import 'package:flutter/material.dart';

class SocialSignUpButton extends StatelessWidget {
  const SocialSignUpButton({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFFF1F6FB),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.all(15),
        minimumSize: Size(60, 60), // Adjust the width & height
      ),
      onPressed: () {
        print("$text button clicked");
      },
      child: Image.asset(image, width: 20),
    );
  }
}
