import 'package:flutter/material.dart';

class SponsoredShop extends StatelessWidget {
  const SponsoredShop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200, // Define a proper height
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(8.0), // Add some spacing
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFD1EDFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      15.0,
                    ), // Adjust padding as needed
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/Folder-Hierarchy--Streamline-Freehand 1.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFD1EDFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      15.0,
                    ), // Adjust padding as needed
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/Web-Application-Tool-Nodewebkit--Streamline-Freehand 1.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFD1EDFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      15.0,
                    ), // Adjust padding as needed
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/Ipod-Player-3--Streamline-Freehand 1.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFD1EDFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      15.0,
                    ), // Adjust padding as needed
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/Kitchen-Shelf--Streamline-Freehand 1.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(8.0), // Add some spacing
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFD1EDFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      15.0,
                    ), // Adjust padding as needed
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/Christmas-Gift-Tree--Streamline-Freehand 1.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFD1EDFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      15.0,
                    ), // Adjust padding as needed
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/Office-Tape-1--Streamline-Freehand 1.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFD1EDFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      15.0,
                    ), // Adjust padding as needed
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/History-Chinese-Lantern--Streamline-Freehand 1.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFD1EDFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      15.0,
                    ), // Adjust padding as needed
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/Tools-Kitchen-Digital-Timer--Streamline-Freehand 1.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
