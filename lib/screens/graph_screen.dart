import 'package:financial_goal/data/typography.dart';
import 'package:financial_goal/widgets/Splinegraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/constants.dart';
import '../widgets/account_picture.dart';
import '../widgets/choice_chip.dart';
import '../widgets/newbar.dart';

class BarGraphScreen extends StatelessWidget {
  const BarGraphScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: kBlackBackground,
        child: Scaffold(
          backgroundColor: kBlackBackground,
          body: Column(
            children: [
              SizedBox(
                height: 80.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        )),
                    const Spacer(),
                    Text("Wallet",
                        style: kHeadingStyle.copyWith(
                            color: kWhitePrimary, fontWeight: kBoldFontWeight)),
                    const Spacer(),
                    const AccountPicture(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 40.h,
                  bottom: 30.h,
                  left: 20.w,
                  right: 20.w,
                ),
                child: const ChoiceChipwidget(),
              ),
              Newbar(),
              Padding(
                padding: EdgeInsets.only(
                  top: 40.h,
                  bottom: 40.h,
                  left: 20.w,
                  right: 20.w,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Expense",
                          style: kMediumheadingTextStyle.copyWith(
                              color: kWhitePrimary),
                        ),
                        const Spacer(),
                        const Splinegraph(),
                        const Spacer(),
                        Text(
                          "200",
                          style: kMediumheadingTextStyle.copyWith(
                              color: kWhitePrimary),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Income",
                          style: kMediumheadingTextStyle.copyWith(
                              color: kWhitePrimary),
                        ),
                        const Spacer(),
                        const Splinegraph(),
                        const Spacer(),
                        Text(
                          "1200",
                          style: kMediumheadingTextStyle.copyWith(
                              color: kWhitePrimary),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
