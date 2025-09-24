import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/Features/home/presentation/views/widgets/custom_offers_slider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});


  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomOffersSlider()
      ],
    );
  }
}

