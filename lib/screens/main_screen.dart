import 'package:financial_goal/data/constants.dart';
import 'package:financial_goal/model/expense_list_tile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/card_container_model.dart';
import '../widgets/account_picture.dart';
import '../widgets/card_detail_container.dart';
import '../widgets/expense_list_tile.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBlackBackground,
      child: Scaffold(
        backgroundColor: kBlackBackground,
        body: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: SizedBox(
                height: 50.h,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: kWhitePrimary,
                        )),
                    const Spacer(),
                    const AccountPicture()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 320.h,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.only(
                    left: 30.w, top: 20.h, right: 30.w, bottom: 30.h),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return CardDetailContainer(
                    cartcontainer: cartContainer[index],
                  );
                },
                itemCount: cartContainer.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 20.w,
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(0),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return ExpanseListTile(
                    expensedata: listdata[index],
                  );
                },
                itemCount: listdata.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 30.h,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
