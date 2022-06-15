import 'package:financial_goal/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: kBlackBackground,
        child: Scaffold(
          backgroundColor: kBlackBackground,
          body: Center(
            child: Text(
              "Screen",
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
