import 'package:flutter/material.dart';
import 'package:fruit_app/Features/home/presentation/views/widgets/category_list.dart';
import 'package:fruit_app/Features/home/presentation/views/widgets/custom_offers_slider.dart';
import 'package:fruit_app/Features/home/presentation/views/widgets/fruits_section.dart';
import 'package:fruit_app/Features/home/presentation/views/widgets/product_list.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomOffersSlider(),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: CategoryList(),
          ),
          SizedBox(
            height: 20,
          ),
          FruitsSection(),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal, child: ProductList())
        ],
      ),
    );
  }
}

