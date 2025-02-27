import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:mad/components/ad_card.dart';
import 'package:mad/components/money_buttons.dart';
import 'package:mad/components/profile_bar.dart';
import 'package:mad/components/wallet_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.explore_outlined),
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
            Text("data"),
            const SizedBox(height: 40),
            AdsSection(),
          ],
        ),
      ),
    );
  }
}
