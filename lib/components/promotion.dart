import 'package:flutter/material.dart';

class Promotion extends StatelessWidget {
  const Promotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Promotion", style: TextStyle(color: Colors.grey)),
          SizedBox(height: 10),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Semantics(
              container: true, // Helps track the widget in accessibility tree
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      right: 10,
                    ), // Adds spacing between items
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            12,
                          ), // Rounded corners
                          child: Image.asset(
                            "assets/image.png",
                            width: 400,
                            height:
                                250, // Increased height for better proportions
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 20, // Adjust as needed
                          right: 5, // Positioning at top-right
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              shape: BoxShape.rectangle,
                              color: Colors.white, // Background for visibility
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                              ), // Change icon as needed
                              onPressed: () {
                                print("Like button pressed$index");
                                // Add your action here
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
