import 'package:financial_goal/data/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/typography.dart';
import '../model/card_container_model.dart';

class CardDetailContainer extends StatelessWidget {
  final CartContainer cartcontainer;

  const CardDetailContainer({
    Key? key,
    required this.cartcontainer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.h,
      width: 240.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.r),
          color: cartcontainer.colour),
      child: Padding(
        padding: EdgeInsets.only(left: 40.w),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 40,
              width: 100,
              child: Stack(
                children: [
                  Positioned(
                      left: 15,
                      child: CircleAvatar(
                        radius: 14.r,
                        backgroundColor: Colors.grey,
                      )),
                  Positioned(
                      left: 1,
                      child: CircleAvatar(
                        radius: 14.r,
                        backgroundColor: Colors.black,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text("Card Number",
                style: kCardTextStyle.copyWith(color: kBlackBackground)),
            SizedBox(
              height: 2.h,
            ),
            Text(
              cartcontainer.idnum.toString(),
              style: kContainerTextStyle.copyWith(
                  color: kBlackBackground,
                  letterSpacing: 4.0,
                  fontWeight: kBoldFontWeight),
            ),
            SizedBox(
              height: 65.h,
            ),
            Text(
              cartcontainer.idname,
              style: kMediumheadingTextStyle.copyWith(
                  color: kBlackBackground, fontWeight: kBoldFontWeight),
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}
