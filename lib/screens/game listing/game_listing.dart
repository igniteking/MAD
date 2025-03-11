import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mad/components/Game/game_listing_card.dart';

class GameListing extends StatelessWidget {
  const GameListing({super.key});

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
          'Game Listing',
          style: TextStyle(
            fontFamily: GoogleFonts.workSans().fontFamily,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color(0xFFEEE9FB),
              height: 60,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "=> Money Games happen every week. Play every week & EARN.",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 12),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                height: 700,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: GameListingCard(),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
