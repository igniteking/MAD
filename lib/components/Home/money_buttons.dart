import 'package:flutter/material.dart';

class MoneyButtons extends StatelessWidget {
  const MoneyButtons({
    super.key,
    required this.onToggle,
    required this.showMoneyGame,
  });

  final Function(bool) onToggle;
  final bool showMoneyGame;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 200,
            color: Colors.white,
            child: TextButton(
              onPressed: () => onToggle(true), // Show MoneyGame
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/image 12.png", width: 20),
                  SizedBox(width: 10),
                  Text(
                    "Money Game",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF365099),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            child: Container(
              width: 200,
              color: Colors.white,
              child: TextButton(
                onPressed: () => onToggle(false), // Show SponsoredShop
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/image 14.png", width: 20),
                    SizedBox(width: 10),
                    Text(
                      "Sponsored Shop",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF365099),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
