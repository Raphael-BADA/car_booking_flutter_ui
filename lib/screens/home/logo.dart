import 'package:car_booking/screens/home/data.dart';
import 'package:car_booking/theme/colors.dart';
import 'package:car_booking/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.heightPercent(context, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int i = 0; i < HomeData.logoImg.length; i++)
            Card(
              child: Container(
                height: ScreenSize.heightPercent(context, 12),
                width: ScreenSize.widthPercent(context, 21),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: ScreenSize.heightPercent(context, 6),
                      child: Image.asset(
                        "assets/${HomeData.logoImg[i]}.png",
                      ),
                    ),
                    Text(
                      HomeData.logoName[i],
                      style: GoogleFonts.aBeeZee(
                        color: AppTheme.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
