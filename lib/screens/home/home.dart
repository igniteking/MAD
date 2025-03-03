import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:mad/components/ad_card.dart';
import 'package:mad/components/bottom_coupon.dart';
import 'package:mad/components/money_buttons.dart';
import 'package:mad/components/profile_bar.dart';
import 'package:mad/components/promotion.dart';
import 'package:mad/components/wallet_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, String>> promotionCards = [
    {"image": "assets/unsplash_BbVGAjfAQ4o.png", "title": "Malls in My City"},
    {"image": "assets/unsplash_Ew5pLCfW0zw.png", "title": "Sales & Offers"},
    {"image": "assets/unsplash_ASuzNrcUBtg.png", "title": "Concerts & Events"},
    {"image": "assets/unsplash_BbVGAjfAQ4o.png", "title": "Malls in My City"},
    {"image": "assets/unsplash_Ew5pLCfW0zw.png", "title": "Sales & Offers"},
    {"image": "assets/unsplash_ASuzNrcUBtg.png", "title": "Concerts & Events"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {},
            ),
            Image.asset(
              'assets/Logo.png',
              height: 40, // Adjust size as needed
            ),
            const Spacer(), // Pushes remaining items to the right
            SizedBox(
              height: 30, // Adjust size
              width: 30,
              child: ClipOval(
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
            ),
            SizedBox(
              height: 30, // Adjust size
              width: 30,
              child: ClipOval(
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
                    'assets/Group 31.png', // Your image
                    fit: BoxFit.contain,
                    width: 25,
                  ),
                ),
              ),
            ),
            LikeButton(
              circleColor: const CircleColor(
                start: Color(0xff00ddff),
                end: Color(0xff0099cc),
              ),
              bubblesColor: const BubblesColor(
                dotPrimaryColor: Colors.pink,
                dotSecondaryColor: Colors.white,
              ),
              likeBuilder: (bool isLiked) {
                return Icon(
                  Icons.favorite,
                  color: isLiked ? Colors.red : Colors.grey.withOpacity(0.5),
                  size: 25,
                );
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              color: const Color(0xFFEEE9FB), // Background color for Column
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: const ProfileBar(),
                  ),
                  WalletSection(),
                  SizedBox(height: 20),
                  MoneyButtons(),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Text("Developing this area!"),
            const SizedBox(height: 50),
            AdsSection(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: promotionCards.length,
                  itemBuilder:
                      (context, index) => Container(
                        key: ValueKey(index),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 200,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Stack(
                          children: [
                            // Background Image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                10,
                              ), // Apply same rounded corners
                              child: Image.asset(
                                promotionCards[index]["image"]!, // Fetching image from list
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),

                            // Gradient Overlay
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.transparent, Colors.black],
                                  ),
                                ),
                              ),
                            ),

                            // Text at the Bottom
                            Positioned(
                              bottom: 10,
                              left: 0,
                              right: 0,
                              child: Text(
                                promotionCards[index]["title"]!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black54,
                                      blurRadius: 4,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                ),
              ),
            ),
            Promotion(),
            CouponCode(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
