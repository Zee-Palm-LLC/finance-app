import 'package:financial_goal/data/constants.dart';
import 'package:financial_goal/model/expense_list_tile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/typography.dart';

class ExpanseListTile extends StatelessWidget {
  final ExpenseListData expensedata;
  const ExpanseListTile({
    Key? key,
    required this.expensedata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 40.w),
      leading: Icon(
        expensedata.icon,
        color: kWhitePrimary,
        size: 40.sp,
      ),
      title: Text(
        expensedata.expensetitle,
        style: kMediumheadingTextStyle.copyWith(color: kWhitePrimary),
      ),
      subtitle: Text(expensedata.date,
          style: TextStyle(
              fontSize: 14.sp, color: kWhitePrimary.withOpacity(0.4))),
      trailing: Text(
        "-\$${expensedata.cash}",
        style: kMediumheadingTextStyle.copyWith(color: kWhitePrimary),
      ),
    );
  }
}
