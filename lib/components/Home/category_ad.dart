import 'package:flutter/material.dart';

class CategoryAd extends StatelessWidget {
  CategoryAd({super.key});
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
    return Padding(
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
                            Shadow(color: Colors.black54, blurRadius: 4),
                          ],
                        ),
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
