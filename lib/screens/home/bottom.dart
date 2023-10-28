import 'package:car_booking/screens/details/details_screen.dart';
import 'package:car_booking/screens/home/data.dart';
import 'package:car_booking/theme/colors.dart';
import 'package:car_booking/utils/app_space.dart';
import 'package:car_booking/utils/screen_size.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ScreenSize.heightPercent(context, 26.9),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  height: ScreenSize.heightPercent(context, 26.9),
                  width: ScreenSize.widthPercent(context, 18),
                  decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(25))),
                ),
                Positioned(
                  bottom: 75,
                  left: -25,
                  child: Transform.rotate(
                    angle: -90 *
                        3.1415927 /
                        180, // Rotate text by 45 degrees (in radians)
                    child: Text(
                      'Raphael Cars',
                      style: GoogleFonts.aBeeZee(
                        color: AppTheme.secondaryColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            AppSpace.hori10,
            Container(
              height: ScreenSize.heightPercent(context, 26.9),
              width: ScreenSize.widthPercent(context, 78),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Card(
                        child: Stack(
                          children: [
                            Container(
                              height: ScreenSize.heightPercent(context, 25),
                              width: ScreenSize.widthPercent(context, 38),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: ScreenSize.heightPercent(
                                            context, 13),
                                        width: ScreenSize.widthPercent(
                                            context, 38),
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(85),
                                            bottomRight: Radius.circular(85),
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15),
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(85),
                                            bottomRight: Radius.circular(85),
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15),
                                          ),
                                          child: Image(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "assets/car${index + 1}.png")),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -2,
                                        left: 11,
                                        child: Container(
                                          height: ScreenSize.heightPercent(
                                              context, 9),
                                          width: ScreenSize.widthPercent(
                                              context, 8),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.black26),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text('4.7'),
                                              CircleAvatar(
                                                backgroundColor:
                                                    AppTheme.secondaryColor,
                                                child: Icon(
                                                  Icons.star,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  AppSpace.vert5,
                                  Text(
                                    HomeData.carName[index],
                                    style: GoogleFonts.aBeeZee(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    HomeData.carName[index],
                                    style: GoogleFonts.aBeeZee(fontSize: 9),
                                  ),
                                  Text(
                                    '\$1643 - \$4848',
                                    style: GoogleFonts.aBeeZee(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Expanded(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                     const DetailScreen()));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      AppTheme.secondaryColor),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15),
                                              )),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 17, right: 17, top: 8),
                                            child: Container(
                                              child: Text(
                                                'Order Now',
                                                style: GoogleFonts.aBeeZee(
                                                    fontWeight: FontWeight.bold,
                                                    color: AppTheme
                                                        .secondaryColor),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ));
  }
}
