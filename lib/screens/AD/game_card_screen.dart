import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ClipOval(
            // Makes the button circular
            child: TextButton(
              onPressed: () {
                print("Button Pressed");
              },
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.zero),
                shape: WidgetStateProperty.all(
                  CircleBorder(),
                ), // Ensures circular shape
                overlayColor: WidgetStateProperty.resolveWith<Color?>((
                  Set<WidgetState> states,
                ) {
                  if (states.contains(WidgetState.hovered)) {
                    return const Color.fromARGB(
                      122,
                      33,
                      149,
                      243,
                    ); // Change hover color
                  }
                  return null; // Default color (transparent)
                }),
              ),
              child: Image.asset(
                'assets/Help & Resources.png', // Your image
                fit: BoxFit.contain,
                width: 25,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8), // Adjust margin if needed
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ), // Border color and width
              color: Colors.white, // Background color
            ),
            child: IconButton(
              icon: Icon(Icons.more_vert, color: Colors.black),
              onPressed: () {
                print("Button Pressed");
              },
            ),
          ),
        ],
        leading: Container(
          margin: EdgeInsets.all(8), // Adjust margin if needed
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ), // Border color and width
            color: Colors.white, // Background color
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
        ),

        title: Text(
          'Game View',
          style: TextStyle(
            fontFamily: GoogleFonts.workSans().fontFamily,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Color(0xFFC41230)),
              ),
              onPressed: () {},
              child: Text(
                'I Wanna Play the Game',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
