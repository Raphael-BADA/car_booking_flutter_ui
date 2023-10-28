import 'package:car_booking/screens/home/bottom.dart';
import 'package:car_booking/screens/home/data.dart';
import 'package:car_booking/screens/home/logo.dart';
import 'package:car_booking/screens/home/search.dart';
import 'package:car_booking/theme/colors.dart';
import 'package:car_booking/utils/app_space.dart';
import 'package:car_booking/utils/screen_size.dart';
import 'package:car_booking/widgets/clip.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: WaveClipperTwo(flip: true),
                child: Container(
                  height: ScreenSize.heightPercent(context, 43),
                  color: AppTheme.primaryColor,
                  /*  child: const Center(
                    child: Text("WaveClipperTwo(flip: true)"),
                  ), */
                ),
              ),
              Container(
                height: ScreenSize.heightPercent(context, 43),
                width: ScreenSize.width(context),
                child: Column(
                  children: [
                    SizedBox(
                      height: ScreenSize.heightPercent(context, 7),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppSpace.defaultPadding(context)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              /*  Icon(
                                Icons.menu,
                                color: Colors.white,
                              ), */

                              Text(
                                'RAPHAEL CARS',
                                style: GoogleFonts.aBeeZee(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                              AppSpace.hori5,
                              Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                              AppSpace.hori5,
                              CircleAvatar(
                                radius: 13,
                                backgroundImage:
                                    AssetImage("assets/avatar.png"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    AppSpace.vert10,
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppSpace.defaultPadding(context)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: ScreenSize.heightPercent(context, 31),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                for (int i = 0; i < 4; i++)
                                  Container(
                                    height:
                                        ScreenSize.heightPercent(context, 7),
                                    width: ScreenSize.heightPercent(context, 7),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/car${i + 1}.png"),
                                      ),
                                    ),
                                  )
                              ],
                            ),
                          ),
                          Container(
                            height: ScreenSize.heightPercent(context, 31),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Find The ',
                                      style: GoogleFonts.aBeeZee(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      'Right car | popular',
                                      style: GoogleFonts.aBeeZee(
                                        color: AppTheme.secondaryColor,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.green,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      'Start selling',
                                      style: GoogleFonts.aBeeZee(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right:
                                          ScreenSize.widthPercent(context, 9)),
                                  child: Container(
                                    height:
                                        ScreenSize.heightPercent(context, 22),
                                    child: Image(
                                        image: AssetImage(
                                            "assets/${HomeData.carImg[1]}.png")),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          AppSpace.vert10,
          HomeSearch(),
          AppSpace.vert10,
          HomeLogo(),
          AppSpace.vert10,
          HomeBottom(),
        ],
      ),
    );
  }
}
