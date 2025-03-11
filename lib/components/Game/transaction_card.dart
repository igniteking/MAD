import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String imagePath; // Takes a single image path

  TransactionCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: const Color.fromARGB(50, 0, 0, 0), blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo Image
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue[100],
            child: Image.asset(
              imagePath, // ✅ Pass a single image path
              height: 40,
            ),
          ),
          SizedBox(width: 15), // Space between logo and text
          // Text Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "TATA Motors Wheel Spin",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "30 Sep 2021, 19 : 50 PM",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),

          // Amount
          Text(
            "+ ₹ 345",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue[700],
            ),
          ),
        ],
      ),
    );
  }
}
