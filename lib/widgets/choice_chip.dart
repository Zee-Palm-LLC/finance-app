import 'package:financial_goal/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/typography.dart';

class ChoiceChipwidget extends StatefulWidget {
  const ChoiceChipwidget({Key? key}) : super(key: key);

  @override
  State<ChoiceChipwidget> createState() => _ChoiceChipwidgetState();
}

class _ChoiceChipwidgetState extends State<ChoiceChipwidget> {
  List<String>? _choices;
  int? _defaultChoiceIndex;
  Color? icolor;

  @override
  void initState() {
    _choices = ['Week', 'Month', 'Year'];
    _defaultChoiceIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      height: 30,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: _choices!.length,
        itemBuilder: (BuildContext context, int index) {
          return ChoiceChip(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kSmallRadius)),
              labelPadding: EdgeInsets.symmetric(
                horizontal: 22.w,
              ),
              label: Text(_choices![index],
                  style: kMediumTextStyle.copyWith(
                      color: _defaultChoiceIndex == index
                          ? kBlackBackground
                          : kWhitePrimary,
                      fontWeight: FontWeight.bold)),
              selected: _defaultChoiceIndex == index,
              selectedColor: kWhitePrimary,
              backgroundColor: kBlackBackground,
              onSelected: (bool selected) {
                setState(() {
                  _defaultChoiceIndex = selected ? index : 0;
                });
              });
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 34.w,
          );
        },
      ),
    );
  }
}
