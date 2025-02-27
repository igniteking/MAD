import 'package:flutter/material.dart';

final List<Map<String, dynamic>> cardData = [
  {
    'id': '#21AB345',
    'amount': '₹2500',
    'location': 'Prestige Shantiniketan',
    'code': '01',
  },
  {
    'id': '#21HG567',
    'amount': '₹1500',
    'location': 'Pheonix Mall',
    'code': '03',
  },
];

class WalletSection extends StatelessWidget {
  const WalletSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: SizedBox(
        height: 150,
        width: double.infinity,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Ensures proper alignment
              children: [
                SizedBox(
                  height: 90, // More height
                  width: 50, // Less width
                  child: TextButton(
                    onPressed: () {
                      print("Add Button Pressed");
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.zero, // Remove default padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ), // No border radius
                    ),
                    child: RotatedBox(
                      quarterTurns: 3, // Rotate 90° left
                      child: Row(
                        mainAxisSize: MainAxisSize.min, // Fit content size
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/Icon - Add.png", width: 20),
                          SizedBox(width: 8), // Adjust spacing
                          Text("Add"),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50, // More height
                  width: 50, // Less width
                  child: TextButton(
                    onPressed: () {
                      print("Scan Button Pressed");
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.zero, // Remove default padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ), // No border radius
                    ),
                    child: RotatedBox(
                      quarterTurns: 3, // Rotate 90° left
                      child: Image.asset("assets/Scan.png", width: 20),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              // Ensures ListView fits properly within Row
              child: SizedBox(
                height: 140, // Fixed height for horizontal scroll
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cardData.length,
                    itemBuilder: (context, index) {
                      return CashCard(
                        id: cardData[index]['id'],
                        amount: cardData[index]['amount'],
                        location: cardData[index]['location'],
                        code: cardData[index]['code'],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CashCard extends StatelessWidget {
  final String id;
  final String amount;
  final String location;
  final String code;

  const CashCard({
    super.key,
    required this.id,
    required this.amount,
    required this.location,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Adjust width as needed
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/Bg.png")),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(id, style: TextStyle(color: Colors.white70, fontSize: 12)),
              Text(code, style: TextStyle(color: Colors.white70, fontSize: 12)),
            ],
          ),
          SizedBox(height: 8),
          Text(
            amount,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(location, style: TextStyle(color: Colors.white, fontSize: 14)),
        ],
      ),
    );
  }
}
