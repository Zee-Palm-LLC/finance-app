import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle get kLargerTextStyle => TextStyle(fontSize: ScreenUtil().setSp(55));
TextStyle get kHeadingStyle => TextStyle(fontSize: ScreenUtil().setSp(24));
TextStyle get kContainerTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(30));
TextStyle get kMediumheadingTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(22));
TextStyle get kMediumTextStyle => TextStyle(fontSize: ScreenUtil().setSp(14));
TextStyle get kSmallTextStyle => TextStyle(fontSize: ScreenUtil().setSp(16));
TextStyle get kCardTextStyle => TextStyle(fontSize: ScreenUtil().setSp(12));
TextStyle get kVerySmallTextStyle =>
    TextStyle(fontSize: ScreenUtil().setSp(10));

const FontWeight kBoldFontWeight = FontWeight.bold;
const FontWeight kRegularFontWeight = FontWeight.normal;
const FontWeight kLightFontWeight = FontWeight.w400;
const FontWeight kThinFontWeight = FontWeight.w100;

List<BoxShadow> boxshadow = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.3),
    spreadRadius: 2,
    blurRadius: 3,
    offset: const Offset(1, 3), // changes position of shadow
  )
];
