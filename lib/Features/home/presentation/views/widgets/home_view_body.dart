import 'package:flutter/material.dart';
import 'package:fruit_app/Core/constants.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';
import 'package:fruit_app/Features/home/presentation/views/widgets/category_list.dart';
import 'package:fruit_app/Features/home/presentation/views/widgets/custom_offers_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
          Row(
            children: [
              Text(
                'Fruits',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: getResponsiveFontSize(context, fontSize: 20)),
              ),
              Spacer(),
              Text(
                'See all',
                style: TextStyle(
                    color: Constants.primary,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: getResponsiveFontSize(context, fontSize: 20)),
              )
            ],
          )
        ],
      ),
    );
  }
}
