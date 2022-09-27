import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';
import 'package:tambola_frontend/screens/WalletCard/wallet_card.dart';

import '../SelectRoom/widgets/coustom_button_text.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            width: 339.w,
            height: 552.h,
            decoration: BoxDecoration(
              gradient: newblue2liner,
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: Column(children: [
              SizedBox(height: 5.h),
              NewCoustomText2(
                text: "Transaction History",
                fontsize: 25.sp,
                fontFamily: "Inter",
                fontWeight: FontWeight.bold,
                color: newfireliner.colors,
              ),
              SizedBox(height: 5.h),
              Container(
                width: 329.w,
                height: 373.h,
                decoration: BoxDecoration(
                  gradient: newmetalliccard,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Column(
                  children: [
                    Expanded(
                        child: ListView(
                      padding: EdgeInsets.only(left: 20.w, top: 10.h),
                      children: [
                        TransationList(),
                        TransationList(),
                        TransationList(),
                        TransationList(),
                        TransationList(),
                        TransationList(),
                        TransationList(),
                        TransationList(),
                        TransationList(),
                        TransationList(),
                        TransationList(),
                      ],
                    )),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  SizedBox(width: 50.w),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/select-room');
                    },
                    child: CustomButton2(
                        text: "Play",
                        fontsize: 23.sp,
                        fontWeight: FontWeight.bold,
                        width: 115.w,
                        width2: 95.w,
                        height: 47.h,
                        height2: 35.h,
                        gradient1: newblacklinergradient,
                        gradient2: newfireliner,
                        color: newblacklinergradient.colors),
                  ),
                  SizedBox(width: 10.w),
                  InkWell(
                    onTap: () {
                      showDialog(
                          useSafeArea: false,
                          context: context,
                          builder: (context) => NewWallet());
                    },
                    child: CustomButton2(
                        text: "Wallet",
                        fontsize: 23.sp,
                        fontWeight: FontWeight.bold,
                        width: 115.w,
                        width2: 95.w,
                        height: 47.h,
                        height2: 35.h,
                        gradient1: newblacklinergradient,
                        gradient2: newfireliner,
                        color: newblacklinergradient.colors),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  SizedBox(width: 50.w),
                  CustomButton2(
                      text: "Share",
                      fontsize: 23.sp,
                      fontWeight: FontWeight.bold,
                      width: 115.w,
                      width2: 95.w,
                      height: 47.h,
                      height2: 35.h,
                      gradient1: newblacklinergradient,
                      gradient2: newfireliner,
                      color: newblacklinergradient.colors),
                  SizedBox(width: 10.w),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/customer-support');
                    },
                    child: CustomButton2(
                        text: "Support",
                        fontsize: 23.sp,
                        fontWeight: FontWeight.bold,
                        width: 115.w,
                        width2: 95.w,
                        height: 47.h,
                        height2: 35.h,
                        gradient1: newblacklinergradient,
                        gradient2: newfireliner,
                        color: newblacklinergradient.colors),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
      designSize: const Size(428, 926),
    );
  }
}

class TransationList extends StatelessWidget {
  const TransationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => SizedBox(
        width: 300.w,
        height: 55.28.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                NewCoustomText2(
                  text: "Withdrawal ( Paytm/UPI )",
                  fontsize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: newgreytextgradient.colors,
                ),
                SizedBox(width: 20.w),
                NewCoustomText2(
                  text: "-  ₹ 10000",
                  fontsize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: newredliner.colors,
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                NewCoustomText2(
                  text: "Room ID/ Transaction ID",
                  fontsize: 10.sp,
                  fontWeight: FontWeight.bold,
                  color: newredliner.colors,
                ),
                SizedBox(width: 80.w),
                NewCoustomText2(
                  text: "Added in Wallet",
                  fontsize: 10.sp,
                  fontWeight: FontWeight.bold,
                  color: newgreytextgradient.colors,
                ),
              ],
            ),
            SizedBox(height: 7.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Container(
                width: 249.w,
                height: 1.2.h,
                decoration: BoxDecoration(
                  gradient: newblacklinergradient,
                ),
              ),
            ),
            SizedBox(height: 6.h),
          ],
        ),
      ),
      designSize: const Size(428, 926),
    );
  }
}
