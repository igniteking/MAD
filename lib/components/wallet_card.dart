import 'package:flutter/material.dart';

class CashCard extends StatelessWidget {
  final String id;
  final String amount;
  final String location;
  final String code;
  final List<Color> gradientColors;

  const CashCard({
    required this.id,
    required this.amount,
    required this.location,
    required this.code,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Adjust width as needed
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: gradientColors[0].withOpacity(0.6), // Soft glow
            blurRadius: 15,
            spreadRadius: 3,
            offset: Offset(0, 8),
          ),
        ],
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
