import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:mad/components/Game/transaction_card.dart';
import 'package:mad/components/Home/profile_bar.dart';
import 'package:mad/components/Home/wallet_card.dart';

class CardBalance extends StatelessWidget {
  CardBalance({super.key});
  final imageList = [
    'assets/TATA logo.png',
    'assets/Airtel logo.png',
    'assets/vivo logo.png',
    'assets/TATA logo.png',
    'assets/Airtel logo.png',
    'assets/vivo logo.png',
    'assets/TATA logo.png',
    'assets/Airtel logo.png',
    'assets/vivo logo.png',
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
            const Spacer(),
            _buildIconButton('assets/Help & Resources.png'),
            _buildIconButton('assets/Group 31.png'),
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

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: const ProfileBar(),
          ),
          WalletSection(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Prestige Shantiniketan",
                  style: TextStyle(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "₹ 5600",
                  style: TextStyle(
                    color: Color(0xFF9EA7AD),
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            // This ensures only the list scrolls
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 8.0,
                  ),
                  child: TransactionCard(imagePath: imageList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(String assetPath) {
    return SizedBox(
      height: 30,
      width: 30,
      child: ClipOval(
        child: TextButton(
          onPressed: () {
            print("Button Pressed");
          },
          style: ButtonStyle(
            padding: WidgetStateProperty.all(EdgeInsets.zero),
            shape: WidgetStateProperty.all(CircleBorder()),
            overlayColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.hovered)) {
                return const Color.fromARGB(122, 33, 149, 243);
              }
              return null;
            }),
          ),
          child: Image.asset(assetPath, fit: BoxFit.contain, width: 25),
        ),
      ),
    );
  }
}
