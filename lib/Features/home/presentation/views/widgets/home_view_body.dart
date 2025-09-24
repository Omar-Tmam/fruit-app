import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';
import 'package:fruit_app/Features/home/data/models/category_model.dart';
import 'package:fruit_app/Features/home/presentation/views/widgets/category_item.dart';
import 'package:fruit_app/Features/home/presentation/views/widgets/custom_offers_slider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomOffersSlider(),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: CategoryList(),
        )
      ],
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  static List<CategoryModel> category = [
    CategoryModel(image: 'assets/pasket.png', name: 'Fruits'),
    CategoryModel(image: 'assets/milk.png', name: 'Milk & egg'),
    CategoryModel(image: 'assets/food.png', name: 'Beverages'),
    CategoryModel(image: 'assets/cloth.png', name: 'Laundry'),
    CategoryModel(image: 'assets/vegetables.png', name: 'Vegetables'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(category.length, (index) {
        return CategoryItem(
            image: category[index].image, text: category[index].name);
      }),
    );
  }
}
