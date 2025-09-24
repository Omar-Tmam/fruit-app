import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/Core/constants.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';

class CustomPopupCart extends StatelessWidget {
  const CustomPopupCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.sizeOf(context).width - 30,
      decoration: BoxDecoration(
          color: Constants.primary,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 255, 255, 255)),
            child: Image.asset('assets/banana.png', height: 24),
          ),
          VerticalDivider(indent: 12, endIndent: 12),
          Text("View Basket",
              style: AppStyles.productPriceText(context)
                  .copyWith(color: Colors.white)),
          SvgPicture.asset(
            'assets/pasket_icon.svg',
            height: 24,
            colorFilter:
                ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ],
      ),
    );
  }
}