import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key, required this.imgList});

  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carousel Example")),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 200.0, // Carousel height
            enlargeCenterPage: true, // Zooms in on the selected image
            autoPlay: true, // Auto-play enabled
            autoPlayInterval: Duration(seconds: 3), // 3-second interval
            autoPlayCurve: Curves.fastOutSlowIn, // Smooth transition
            enableInfiniteScroll: true, // Allows infinite scrolling
          ),
          items:
              imgList.map((imagePath) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  child: Image.asset(
                    imagePath,
                    width: double.infinity,
                    fit: BoxFit.cover, // Ensures images fit properly
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
