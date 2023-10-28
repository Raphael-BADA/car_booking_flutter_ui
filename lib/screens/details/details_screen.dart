import 'package:car_booking/screens/details/specs_card.dart';
import 'package:car_booking/screens/home/data.dart';
import 'package:car_booking/theme/colors.dart';
import 'package:car_booking/utils/app_space.dart';
import 'package:car_booking/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            AppSpace.vert5,
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSpace.defaultPadding(context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      AppSpace.hori5,
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
                        backgroundImage: AssetImage("assets/avatar.png"),
                      )
                    ],
                  ),
                ],
              ),
            ),
            AppSpace.vert10,
            Container(
              height: ScreenSize.heightPercent(context, 90.5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(55))),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSpace.defaultPadding(context)),
                    child: Column(
                      children: [
                        AppSpace.vert15,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Renault Triber ',
                              style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppTheme.secondaryColor,
                                ),
                                Text(
                                  '4.7  ',
                                  style: GoogleFonts.aBeeZee(
                                    color: AppTheme.secondaryColor,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  '( 3142 Users )',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        AppSpace.vert15,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: ScreenSize.heightPercent(context, 31),
                              width: ScreenSize.heightPercent(context, 9),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black26),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    for (int i = 0; i < 3; i++)
                                      Container(
                                        height: ScreenSize.heightPercent(
                                            context, 7),
                                        width: ScreenSize.heightPercent(
                                            context, 7),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "assets/car${i + 1}.png"),
                                          ),
                                        ),
                                      ),
                                    Container(
                                      height:
                                          ScreenSize.heightPercent(context, 7),
                                      width:
                                          ScreenSize.heightPercent(context, 7),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black26),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 3.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  height:
                                                      ScreenSize.heightPercent(
                                                          context, 4),
                                                  width:
                                                      ScreenSize.heightPercent(
                                                          context, 7),
                                                ),
                                                CircleAvatar(
                                                  radius: 12,
                                                  backgroundColor: Colors.blue,
                                                ),
                                                Positioned(
                                                  left: 9,
                                                  child: CircleAvatar(
                                                    radius: 12,
                                                    backgroundColor:
                                                        AppTheme.primaryColor,
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 19,
                                                  child: CircleAvatar(
                                                    radius: 12,
                                                    backgroundColor:
                                                        AppTheme.secondaryColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text('Color')
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: ScreenSize.heightPercent(context, 31),
                              width: ScreenSize.widthPercent(context, 71),
                              child: Image(
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                      "assets/${HomeData.carImg[3]}.png")),
                            ),
                          ],
                        ),
                        AppSpace.vert15,
                        Row(
                          children: [
                            Text(
                              'Key Specs for renault Triber',
                              style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        AppSpace.vert15,
                        SpecsCard(),
                        AppSpace.vert15,
                      ],
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(55),
                        topRight: Radius.circular(55),
                      ),
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(55),
                            topRight: Radius.circular(55),
                          )),
                          child: Center(
                            child: Container(
                              width: ScreenSize.widthPercent(context, 85),
                              child: Column(
                                children: [
                                  AppSpace.vert15,
                                  Row(
                                    children: [
                                      Text(
                                        'Specifications',
                                        style: GoogleFonts.aBeeZee(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  AppSpace.vert10,
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                                AppTheme.secondaryColor,
                                          ),
                                          Container(
                                            height: 55,
                                            child: VerticalDivider(
                                              color: AppTheme.secondaryColor,
                                            ),
                                          ),
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                                AppTheme.secondaryColor,
                                          ),
                                        ],
                                      ),
                                      AppSpace.hori20,
                                      AppSpace.hori10,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Product Overview',
                                                style: GoogleFonts.aBeeZee(
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'fuel type ',
                                                style: GoogleFonts.aBeeZee(
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '- DIESEL',
                                                style: GoogleFonts.aBeeZee(),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Engine Deplacement ',
                                                style: GoogleFonts.aBeeZee(
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '- 2312 cc',
                                                style: GoogleFonts.aBeeZee(),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '\$3212 - \$5342',
                                            style: GoogleFonts.aBeeZee(
                                              fontWeight: FontWeight.w800,
                                              color: AppTheme.primaryColor,
                                            ),
                                          ),
                                          AppSpace.vert10,
                                          Row(
                                            children: [
                                              Text(
                                                'Product Overview',
                                                style: GoogleFonts.aBeeZee(
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                      height:
                                          ScreenSize.heightPercent(context, 7),
                                      width:
                                          ScreenSize.widthPercent(context, 85),
                                      decoration: BoxDecoration(
                                          color: AppTheme.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(18)),
                                      child: Center(
                                        child: Text(
                                          'BOOK NOW',
                                          style: GoogleFonts.aBeeZee(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
