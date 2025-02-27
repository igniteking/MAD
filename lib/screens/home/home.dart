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
            Container(
              width: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.05),
                    blurRadius: 5,
                    spreadRadius: 3,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      'https://images.unsplash.com/photo-1448375240586-882707db888b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      height: 120,
                      width: 220,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'Place Name',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.star, color: Colors.amber, size: 15),
                              SizedBox(width: 5),
                              Text(
                                '( 12 )',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                            maxLines: 2,
                            textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false,
                              applyHeightToLastDescent: false,
                            ),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13,
                              height: 1,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 5),
                          RichText(
                            text: const TextSpan(
                              text: r'$160.05',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: '  /night ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            AdsSection(),
            const SizedBox(height: 20),
            MallsSection(),
          ],
        ),
      ),
    );
  }
}

class MallsSection extends StatelessWidget {
  const MallsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Malls in My City',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              5,
              (index) => Container(
                margin: const EdgeInsets.only(right: 10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Mall ${index + 1}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
