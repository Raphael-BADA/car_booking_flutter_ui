import 'package:car_booking/theme/colors.dart';
import 'package:car_booking/utils/app_space.dart';
import 'package:car_booking/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.widthPercent(context, 90),
      height: ScreenSize.heightPercent(context, 14),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: ScreenSize.heightPercent(context, 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.search),
                    Text("Amandahome , Lomé Togo |")
                  ],
                ),
                Container(
                  width: ScreenSize.widthPercent(context, 70),
                  height: ScreenSize.heightPercent(context, 2),
                  child: Text("-" * 35),
                ),
                AppSpace.vert5,
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)),
                      height: 19,
                      width: 19,
                    ),
                    Text(
                      "  New car",
                      style: GoogleFonts.aBeeZee(
                        color: AppTheme.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    AppSpace.hori20,
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)),
                      height: 19,
                      width: 19,
                    ),
                    Text(
                      "  Used car",
                      style: GoogleFonts.aBeeZee(
                        color: AppTheme.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: ScreenSize.heightPercent(context, 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                      )),
                  height: 32,
                  width: 32,
                  child: Icon(
                    Icons.navigation,
                    color: AppTheme.primaryColor,
                  ),
                ),
                Container(
                  height: 15,
                  width: 5,
                  child: VerticalDivider(
                    color: AppTheme.primaryColor,
                    thickness: 3,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                      )),
                  height: 32,
                  width: 32,
                  child: Icon(
                    Icons.search,
                    color: AppTheme.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
