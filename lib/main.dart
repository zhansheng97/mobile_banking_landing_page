import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_banking_landing_page/constants.dart';
import 'package:mobile_banking_landing_page/section/bottom_nav/bottom_nav.dart';
import 'package:mobile_banking_landing_page/section/download_section/download_section.dart';
import 'package:mobile_banking_landing_page/section/guidance_section/guidance_section.dart';
import 'package:mobile_banking_landing_page/section/header_section/header_section.dart';
import 'package:mobile_banking_landing_page/section/information_section/information_section.dart';
import 'package:mobile_banking_landing_page/section/nav/nav_section.dart';
import 'package:mobile_banking_landing_page/section/subscribe_section.dart/subscribe_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Banking Landing Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // primarySwatch: MaterialColor(primary, swatch),
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: Theme.of(context).textTheme.copyWith(
              headline4: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              bodyText2: TextStyle(color: kLightTextColor),
              bodyText1: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              NavSection(),
              HeaderSection(),
              InformationSection(),
              DownloadSection(),
              GuidanceSection(),
              SubscribeSection(),
              BottomNav(),
            ],
          ),
        ],
      ),
    );
  }
}
