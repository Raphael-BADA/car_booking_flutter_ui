import 'package:car_booking/screens/details/details_data.dart';
import 'package:car_booking/screens/home/data.dart';
import 'package:car_booking/theme/colors.dart';
import 'package:car_booking/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecsCard extends StatelessWidget {
  const SpecsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.heightPercent(context, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int i = 0; i < Detailsdata.specs.length; i++)
            Card(
              child: Container(
                height: ScreenSize.heightPercent(context, 12),
                width: ScreenSize.widthPercent(context, 19),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Detailsdata.specs[i]["icon"]),
                    Text(
                      Detailsdata.specs[i]["name"],
                      style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      Detailsdata.specs[i]["data"],
                      style: GoogleFonts.aBeeZee(
                        color: Colors.black,
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
