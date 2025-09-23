import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  static const List<String> items = [
    'assets/Slider 1.png',
    'assets/Slider 2.png',
    'assets/Slider 3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            options: CarouselOptions(
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlay: true,
                viewportFraction: 0.8),
            itemCount: items.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Image.asset(items[itemIndex]))
      ],
    );
  }
}
