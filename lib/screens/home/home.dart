import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:mad/components/Game/ad_card.dart';
import 'package:mad/components/Home/bottom_coupon.dart';
import 'package:mad/components/Home/category_ad.dart';
import 'package:mad/components/Home/companies.dart';
import 'package:mad/components/Home/money_buttons.dart';
import 'package:mad/components/Home/money_game.dart';
import 'package:mad/components/Home/profile_bar.dart';
import 'package:mad/components/Home/promotion.dart';
import 'package:mad/components/Home/sponsored_shop.dart';
import 'package:mad/components/Home/wallet_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showMoneyGame = true; // Default visible widget

  // Function to toggle visibility
  void toggleScreen(bool isMoneyGame) {
    setState(() {
      showMoneyGame = isMoneyGame;
    });
  }

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
                  MoneyButtons(
                    onToggle: toggleScreen,
                    showMoneyGame: showMoneyGame,
                  ),
                ],
              ),
            ),
            showMoneyGame ? const MoneyGame() : const SponsoredShop(),
            AdsSection(),
            SizedBox(height: 10),
            Companies(),
            SizedBox(height: 20),
            CategoryAd(),
            Promotion(),
            CouponCode(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
