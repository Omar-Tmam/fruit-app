import 'package:flutter/material.dart';
import 'package:fruit_app/Features/home/data/models/product_model.dart';
import 'package:fruit_app/Features/home/presentation/views/widgets/product_item.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});
  static List<ProductModel> products = [
    ProductModel(
        name: 'Banana',
        image: 'assets/banana.png',
        price: '\$3.99',
        rate: '4.8',
        rateCount: '287'),
    ProductModel(
        name: 'Pepper',
        image: 'assets/filfil.png',
        price: '\$2.99',
        rate: '4.5',
        rateCount: '197'),
    ProductModel(
        name: 'Orange',
        image: 'assets/orange.png',
        price: '\$3.99',
        rate: '4.1',
        rateCount: '358'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(products.length, (index) {
        return ProductItem(
            image: products[index].image,
            product: products[index].name,
            rate: products[index].rate,
            rateCount: products[index].rateCount,
            price: products[index].rateCount);
      }),
    );
  }
}
