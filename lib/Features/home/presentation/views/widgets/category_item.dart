import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.image, required this.text});
  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              width: 40,
              height: 40,
              image,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: AppStyles.interSemiBold(context),
          )
        ],
      ),
    );
  }
}
