import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mad/components/ad/image_carosil.dart';

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
        width: double.infinity,
        color: Color(0xFFEEE9FB),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Ensures spacing
                children: [
                  TextButton(
                    style: ButtonStyle(
                      fixedSize: WidgetStateProperty.all(Size(200, 50)),
                      backgroundColor: WidgetStateProperty.all(
                        Color(0xFFC41230),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'I Wanna Play the Game',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    // Wrap the icons in a row
                    children: [
                      IconButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Colors.white,
                          ),
                          fixedSize: WidgetStatePropertyAll(Size(50, 50)),
                        ),
                        onPressed: () {
                          print("Bookmark");
                        },
                        icon: Icon(Icons.bookmark_add_outlined),
                      ),
                      SizedBox(width: 10), // Add spacing between icons
                      IconButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Colors.white,
                          ),
                          fixedSize: WidgetStatePropertyAll(Size(50, 50)),
                        ),
                        onPressed: () {
                          print("Share");
                        },
                        icon: Icon(Icons.share_outlined),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 250,
                child: ImageCarousel(
                  imageList: [
                    'assets/car.png',
                    'assets/car1.png',
                    'assets/car2.png',
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity, // Full width
                child: Card.filled(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'KIA Game Carnival - ',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: GoogleFonts.nunitoSans().fontFamily,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Fill in the Car & Win',
                          style: TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 22,
                            fontFamily: GoogleFonts.nunitoSans().fontFamily,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/inr.png", width: 15),
                                SizedBox(width: 5),
                                Text(
                                  '83,465',
                                  style: TextStyle(
                                    color: Color(0xFF092C4C),
                                    fontSize: 16,
                                    fontFamily:
                                        GoogleFonts.nunitoSans().fontFamily,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/box.png", width: 30),
                                SizedBox(width: 5),
                                Text(
                                  'Sponsor :',
                                  style: TextStyle(
                                    color: Color(0xFF092C4C),
                                    fontSize: 16,
                                    fontFamily:
                                        GoogleFonts.nunitoSans().fontFamily,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Transform.translate(
                                  offset: Offset(
                                    0,
                                    -5,
                                  ), // Adjust the value as needed
                                  child: Image.asset(
                                    "assets/KIA.png",
                                    width: 70,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/building.png", width: 20),
                            SizedBox(width: 5),
                            Text(
                              "Redeem At : ",
                              style: TextStyle(
                                color: Color(0xFFE34614),
                                fontSize: 16,
                                fontFamily: GoogleFonts.nunitoSans().fontFamily,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Pheonix Marketcity",
                              style: TextStyle(
                                color: Color(0xFF092C4C),
                                fontSize: 16,
                                fontFamily: GoogleFonts.nunitoSans().fontFamily,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
