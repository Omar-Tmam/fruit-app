import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(
      {super.key,
      required this.image,
      required this.product,
      required this.rate,
      required this.rateCount,
      required this.price});
  final String image, product, rate, rateCount, price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade100),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                image,
                width: 120,
                height: 120,
              ),
            ),
          ),
        ),
        Column(
          children: [
            Text(
              product,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: getResponsiveFontSize(context, fontSize: 18)),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/star.png',
                  width: 18,
                  height: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  rate,
                  style: TextStyle(
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontSize: getResponsiveFontSize(context, fontSize: 16)),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  rateCount,
                  style: TextStyle(
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontSize: getResponsiveFontSize(context, fontSize: 16)),
                ),
              ],
            ),
            Text(
              price,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: getResponsiveFontSize(context, fontSize: 16)),
            ),
          ],
        )
      ],
    );
  }
}