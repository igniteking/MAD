import 'package:flutter/material.dart';

class AdCard extends StatelessWidget {
  final String adImage;
  const AdCard({super.key, required this.adImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 335,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(adImage), // Local asset image
          fit: BoxFit.fill, // Adjusts the image to cover the entire container
        ),
      ),
    );
  }
}

class AdsSection extends StatefulWidget {
  const AdsSection({super.key});

  @override
  State<AdsSection> createState() => _AdsSectionState();
}

class _AdsSectionState extends State<AdsSection> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToCenterOfSecondCard();
    });
  }

  void _scrollToCenterOfSecondCard() {
    double screenWidth = MediaQuery.of(context).size.width; // Get screen width
    double adWidth = 340; // Each ad's width
    double spacing = 15; // Space between ads
    double targetPosition =
        (adWidth + spacing) - (screenWidth / 2) + (adWidth / 2);

    _scrollController.jumpTo(
      targetPosition.clamp(0, _scrollController.position.maxScrollExtent),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            AdCard(adImage: "assets/ad.png"),
            SizedBox(width: 10),
            AdCard(adImage: "assets/ad.png"), // This will be centered
            SizedBox(width: 10),
            AdCard(adImage: "assets/ad.png"),
          ],
        ),
      ),
    );
  }
}
