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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/inr.png", width: 12),
                                  SizedBox(width: 5),
                                  Text(
                                    '83,465',
                                    style: TextStyle(
                                      color: Color(0xFF092C4C),
                                      fontSize: 14,
                                      fontFamily:
                                          GoogleFonts.nunitoSans().fontFamily,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/box.png", width: 20),
                                  SizedBox(width: 5),
                                  Text(
                                    'Sponsor :',
                                    style: TextStyle(
                                      color: Color(0xFF092C4C),
                                      fontSize: 14,
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
                              Image.asset("assets/building.png", width: 15),
                              SizedBox(width: 5),
                              Text(
                                "Redeem At : ",
                                style: TextStyle(
                                  color: Color(0xFFE34614),
                                  fontSize: 14,
                                  fontFamily:
                                      GoogleFonts.nunitoSans().fontFamily,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Pheonix Marketcity",
                                style: TextStyle(
                                  color: Color(0xFF092C4C),
                                  fontSize: 14,
                                  fontFamily:
                                      GoogleFonts.nunitoSans().fontFamily,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.calendar_month_rounded,
                                        color: Color(0xFFFBA089),
                                        size: 20,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Starts",
                                        style: TextStyle(
                                          color: Color(0xFFABB3BB),
                                          fontSize: 12,
                                          fontFamily:
                                              GoogleFonts.nunitoSans()
                                                  .fontFamily,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "14 August",
                                    style: TextStyle(
                                      color: Color(0xFF092C4C),
                                      fontSize: 16,
                                      fontFamily:
                                          GoogleFonts.nunitoSans().fontFamily,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 1, // Line thickness
                                height: 40, // Adjust height as needed
                                color: Color(0xFFE8E8E8), // Line color
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.calendar_month_rounded,
                                        color: Color(0xFFFBA089),
                                        size: 20,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Ends",
                                        style: TextStyle(
                                          color: Color(0xFFABB3BB),
                                          fontSize: 12,
                                          fontFamily:
                                              GoogleFonts.nunitoSans()
                                                  .fontFamily,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "16 August",
                                    style: TextStyle(
                                      color: Color(0xFF092C4C),
                                      fontSize: 16,
                                      fontFamily:
                                          GoogleFonts.nunitoSans().fontFamily,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 1, // Line thickness
                                height: 40, // Adjust height as needed
                                color: Color(0xFFE8E8E8), // Line color
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.discount,
                                        color: Color(0xFFFBA089),
                                        size: 20,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Vouchers",
                                        style: TextStyle(
                                          color: Color(0xFFABB3BB),
                                          fontSize: 12,
                                          fontFamily:
                                              GoogleFonts.nunitoSans()
                                                  .fontFamily,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "832 Nos",
                                    style: TextStyle(
                                      color: Color(0xFF092C4C),
                                      fontSize: 16,
                                      fontFamily:
                                          GoogleFonts.nunitoSans().fontFamily,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "KIA Motors brings to you a game in their style. This Carnival, will give you a chance to fit in as many number of cubes as you can. Fill in the Car and win Cash Vouchers with NO conditions applied.",
                            style: TextStyle(
                              color: Color(0xFFEF8C9D),
                              fontSize: 14,
                              fontFamily: GoogleFonts.nunitoSans().fontFamily,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/location.png", width: 20),
                              SizedBox(width: 7),
                              Text(
                                "Play At : ",
                                style: TextStyle(
                                  color: Color(0xFFE34614),
                                  fontSize: 16,
                                  fontFamily:
                                      GoogleFonts.nunitoSans().fontFamily,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Pheonix Marketcity",
                                style: TextStyle(
                                  color: Color(0xFF128FD6),
                                  fontSize: 16,
                                  fontFamily:
                                      GoogleFonts.nunitoSans().fontFamily,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Image.asset("assets/car2.png"),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Recent Store Launches",
                      style: TextStyle(
                        color: Color(0xFF1F2933),
                        fontSize: 20,
                        fontFamily: GoogleFonts.workSans().fontFamily,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Color(0xFF6B7580),
                        fontSize: 16,
                        fontFamily: GoogleFonts.workSans().fontFamily,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 260, // Adjust height as needed
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Card.filled(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 150,
                                  child: Image.asset("assets/mini so.png"),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Miniso Stores",
                                  style: TextStyle(
                                    color: Color(0xFF1F2933),
                                    fontSize: 14,
                                    fontFamily:
                                        GoogleFonts.workSans().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Now Buy MINISO products in your \nLocal Mall at Jayanagar.",
                                  style: TextStyle(
                                    color: Color(0xFF1F2933),
                                    fontSize: 12,
                                    fontFamily:
                                        GoogleFonts.workSans().fontFamily,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
