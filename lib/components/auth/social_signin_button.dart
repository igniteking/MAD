import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFFF1F6FB), // Text color
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 2, // Subtle shadow
        padding: const EdgeInsets.symmetric(horizontal: 16),
        minimumSize: const Size(double.infinity, 54), // Full-width button
      ),
      onPressed: () {
        print("Login in with $text");
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
                child: Image.asset(image, width: 20),
              ),
            ],
          ),
          const SizedBox(width: 70),
          Text(
            'Login with $text',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: Color(0xFF2E3E5C),
            ),
          ),
        ],
      ),
    );
  }
}
