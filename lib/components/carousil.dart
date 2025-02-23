import 'package:flutter/material.dart';

class CustomCarouselFB2 extends StatefulWidget {
  const CustomCarouselFB2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomCarouselFB2State createState() => _CustomCarouselFB2State();
}

class _CustomCarouselFB2State extends State<CustomCarouselFB2> {
  // - - - - - - - - - - - - Instructions - - - - - - - - - - - - - -
  // 1.Replace cards list with whatever widgets you'd like.
  // 2.Change the widgetMargin attribute, to ensure good spacing on all screensize.
  // 3.If you have a problem with this widget, please contact us at flutterbricks90@gmail.com
  // Learn to build this widget at https://www.youtube.com/watch?v=dSMw1Nb0QVg!
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  List<Widget> cards = [
    CardFb1(
      text: "Explore",
      imageUrl: "assets/ad.png",
      subtitle: "+30 books",
      onPressed: () {},
    ),
    CardFb1(
      text: "Explore",
      imageUrl: "assets/ad.png",
      subtitle: "+30 books",
      onPressed: () {},
    ),
    CardFb1(
      text: "Explore",
      imageUrl: "assets/ad.png",
      subtitle: "+30 books",
      onPressed: () {},
    ),
  ];

  final double carouselItemMargin = 6;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: .7);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: cards.length,
      onPageChanged: (int position) {
        setState(() {});
      },
      itemBuilder: (BuildContext context, int position) {
        return imageSlider(position);
      },
    );
  }

  Widget imageSlider(int position) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, widget) {
        return Container(
          margin: EdgeInsets.all(carouselItemMargin),
          child: Center(child: widget),
        );
      },
      child: Container(child: cards[position]),
    );
  }
}

class CardFb1 extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;
  final Function() onPressed;

  const CardFb1({
    required this.text,
    required this.imageUrl,
    required this.subtitle,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 250,
        height: 230,
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
              offset: const Offset(10, 20),
              blurRadius: 10,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.05),
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(imageUrl, height: 90, fit: BoxFit.cover),
            const Spacer(),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
