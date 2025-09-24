import 'package:flutter/material.dart';
import 'package:fruit_app/Core/utils/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static TextStyle secondaryText(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      color: Theme.of(context).textTheme.bodyMedium?.color,
      fontFamily: GoogleFonts.inter().fontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle productPriceText(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.bodyLarge?.color,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: GoogleFonts.inter().fontFamily,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interSemiBold(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF5A5555),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: GoogleFonts.inter().fontFamily,
      fontWeight: FontWeight.w600,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletBreakPoint) {
    return width / 450;
  } else {
    return width / 950;
  }
}
