import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            children: [
              SizedBox(
                width: 50,
                child: CircleAvatar(
                  radius: 25, // Adjusted size
                  backgroundImage: AssetImage("assets/profile.jpeg"),
                ),
              ),
              const SizedBox(width: 10), // Spacing between image and text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back",
                    style: GoogleFonts.inter(
                      color: const Color(0xFF9EA7AD),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Vellysia Angel",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Right Side: Balance Info
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "My Total Balance",
              style: GoogleFonts.inter(
                color: const Color(0xFF9EA7AD),
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "4000",
              style: GoogleFonts.inter(
                fontSize: 20,
                color: const Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
