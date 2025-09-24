import 'package:flutter/material.dart';
import 'package:fruit_app/Core/constants.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';
import 'package:google_fonts/google_fonts.dart';

class FruitsSection extends StatelessWidget {
  const FruitsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}



