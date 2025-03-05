import 'package:flutter/material.dart';

class Companies extends StatelessWidget {
  Companies({super.key});

  final List<Map<String, String>> adsCards = [
    {"image": "assets/zara.png", "color": "0xFFC1E6F5"},
    {"image": "assets/HM.png", "color": "0xFFF6D4D4"},
    {"image": "assets/GAP.png", "color": "0xFFBCE4B2"},
    {"image": "assets/CROCS.png", "color": "0xFFF3D4AF"},
    {"image": "assets/NIKE.png", "color": "0xFFC1D6F5"},
    {"image": "assets/ZARA.png", "color": "0xFFCEF59C"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: adsCards.length, // Use full list length
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 10),
            height: 100,
            width: 100, // Increased width for visibility
            decoration: BoxDecoration(
              color: Color(int.parse(adsCards[index]["color"]!.replaceAll("0x", "0xff"))),
              borderRadius: BorderRadius.circular(25),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  adsCards[index]["image"]!,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
