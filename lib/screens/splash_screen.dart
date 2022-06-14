import 'package:financial_goal/data/constants.dart';
import 'package:financial_goal/data/typography.dart';
import 'package:financial_goal/screens/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const NavigationBarScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBlackBackground,
      child: Scaffold(
        backgroundColor: kBlackBackground,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(top: 100.h, bottom: 50.h, left: 50.w),
            child: Text(
              "Set your\nFinancial\nGoals",
              style: kLargerTextStyle.copyWith(
                  color: kWhitePrimary, fontWeight: kBoldFontWeight),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 50.w,
            ),
            child: Text(
              "Our Smart finance app will keep you \nrecord stats and track",
              style: kSmallTextStyle.copyWith(color: kWhitePrimary),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              "assets/mycam.svg",
              height: 400.h,
              width: 400.h,
              fit: BoxFit.fill,
            ),
          ),
        ]),
      ),
    );
  }
}
