import 'package:flutter/material.dart';
import 'package:fruit_app/Features/home/data/models/category_model.dart';
import 'package:fruit_app/Features/home/presentation/views/widgets/category_item.dart';

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
