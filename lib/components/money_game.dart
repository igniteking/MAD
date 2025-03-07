import 'package:flutter/material.dart';
import 'package:mad/components/car_ad.dart';

class MoneyGame extends StatelessWidget {
  const MoneyGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 15, color: Colors.white),

        Container(
          color: Colors.white,
          height: 325,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(), // Adds a bouncing effect
            scrollDirection: Axis.horizontal,
            itemCount: 3, // Ensure it matches the list length
            itemBuilder:
                (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: const CarAd(),
                ),
          ),
        ),
        Container(
          color: Colors.white,
          height: 60,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "=> Money Games happen every week. Play every week & EARN.",
              style: TextStyle(color: Colors.blueAccent, fontSize: 16),
            ),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
