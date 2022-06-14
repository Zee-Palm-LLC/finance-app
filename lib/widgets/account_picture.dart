import 'package:financial_goal/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountPicture extends StatelessWidget {
  const AccountPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        height: 40.h,
        width: 40.h,
        decoration: const BoxDecoration(
          color: kWhitePrimary,
        ),
        child: Container(
          margin: const EdgeInsets.all(1),
          height: 10.h,
          width: 10.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Colors.grey,
              border: Border.all(color: kBlackBackground, width: 4)),
        ),
      ),
    );
  }
}
