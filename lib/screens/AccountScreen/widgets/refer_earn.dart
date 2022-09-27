
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/coustom_button_text.dart';

import '../../Refer&Earn_Card/refer_earn_card.dart';

class ReferContainer extends StatelessWidget {
  const ReferContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) => InkWell(
              onTap: () {
                showDialog(
                    useSafeArea: false,
                    context: context,
                    builder: (context) => ReferEarnCard());
              },
              child: Container(
                width: 428.w,
                height: 145.h,
                decoration: BoxDecoration(
                  gradient: blueGradient,
                  boxShadow: [boxShadowWallet],
                ),
                child: SizedBox(
                  width: 428.w,
                  height: 144.h,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 15.h, left: 25.w),
                            child: NewCoustomText2(
                              text: "REFER & EARN",
                              fontsize: 25.sp,
                              fontWeight: FontWeight.bold,
                              color: newgreygradient.colors,
                            )),
                        SizedBox(
                          width: 360.w,
                          height: 96.h,
                          child: Padding(
                            padding: EdgeInsets.only(left: 25.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                NewCoustomText2(
                                  text:
                                      "Refer a Friend and GET\n When they play or add \n      money in wallet",
                                  fontsize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: newgreygradient.colors,
                                ),
                                SizedBox(
                                  width: 155.w,
                                  height: 107.h,
                                  child: Row(children: [
                                    NewCoustomText2(
                                      text: "₹ 10",
                                      fontsize: 35.sp,
                                      fontWeight: FontWeight.bold,
                                      color: newfireliner.colors,
                                    ),
                                    Image.asset(
                                      'assets/images/coins.png',
                                      width: 70.w,
                                      height: 131.h,
                                      scale: 0.1,
                                    ),
                                  ]),
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ));
  }
}
