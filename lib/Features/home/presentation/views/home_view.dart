import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_app/Core/utils/app_styles.dart';
import 'package:fruit_app/Features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/motor.svg',
              width: 28,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '61 Hopper street..',
              style: AppStyles.secondaryText(context).copyWith(
                fontSize: getResponsiveFontSize(context, fontSize: 22),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 34,
            ),
            Spacer(),
            SvgPicture.asset(
              'assets/pasket_icon.svg',
              width: 28,
            )
          ],
        ),
      ),
      body: HomeViewBody(),
    );
  }
}
