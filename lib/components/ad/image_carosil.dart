import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key, required this.imageList});

  final List<String> imageList; // Accept images from the parent

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0; // Track the current page index

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: 200.0,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items:
              widget.imageList.map((imagePath) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                );
              }).toList(),
        ),
        const SizedBox(height: 10),
        // Dots Indicator
        AnimatedSmoothIndicator(
          activeIndex: _currentIndex,
          count: widget.imageList.length,
          effect: ExpandingDotsEffect(
            dotHeight: 8,
            dotWidth: 8,
            activeDotColor: Colors.blue,
            dotColor: Colors.grey.shade400,
          ),
          onDotClicked: (index) {
            _controller.animateToPage(index);
          },
        ),
      ],
    );
  }
}
