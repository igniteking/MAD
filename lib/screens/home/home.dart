import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:mad/components/wallet_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MAD Mobile App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {},
            ),
            const SizedBox(width: 20),
            Image.asset('assets/Logo.png'),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.help_outline)),
          IconButton(onPressed: () {}, icon: Icon(Icons.explore_outlined)),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back, Vellysia Angel',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 10),
              WalletSection(),
              const SizedBox(height: 20),
              AdsSection(),
              const SizedBox(height: 20),
              MallsSection(),
            ],
          ),
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> cardData = [
  {
    'id': '#21AB345',
    'amount': '₹2500',
    'location': 'Prestige Shantiniketan',
    'code': '01',
    'color': [Color(0xFFFF5F6D), Color(0xFFFFC371)], // Pink Gradient
  },
  {
    'id': '#21AB344',
    'amount': '₹2500',
    'location': 'Prestige Shantiniketan',
    'code': '01',
    'color': [Color(0xFFFF5F6D), Color(0xFFFFC371)], // Pink Gradient
  },
  {
    'id': '#21HG567',
    'amount': '₹1500',
    'location': 'Pheonix Mall',
    'code': '02',
    'color': [Color(0xFFFFC371), Color(0xFFFFD700)], // Yellow Gradient
  },
];

class WalletSection extends StatelessWidget {
  const WalletSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 140, // Fixed height for horizontal scroll
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cardData.length,
          itemBuilder: (context, index) {
            return CashCard(
              id: cardData[index]['id'],
              amount: cardData[index]['amount'],
              location: cardData[index]['location'],
              code: cardData[index]['code'],
              gradientColors: cardData[index]['color'],
            );
          },
        ),
      ),
    );
  }
}

class AdsSection extends StatelessWidget {
  const AdsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          'Ad Space',
          style: TextStyle(color: Colors.white, fontSize: 20),
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
