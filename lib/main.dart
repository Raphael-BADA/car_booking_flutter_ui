import 'package:car_booking/screens/home/home_screen.dart';
import 'package:car_booking/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppTheme.primaryColor),
          useMaterial3: true,
          textTheme: TextTheme(
            displayLarge: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
            displayMedium: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
            displaySmall: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
            headlineLarge: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
            headlineMedium: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
            headlineSmall: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
            titleLarge: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
            titleMedium: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
            titleSmall: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
            bodyLarge: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
            bodyMedium: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
            bodySmall: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
            labelLarge: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
            labelMedium: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
            labelSmall: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.black87),
            ),
          )),
      home: const HomeScreen(),
    );
  }
}
