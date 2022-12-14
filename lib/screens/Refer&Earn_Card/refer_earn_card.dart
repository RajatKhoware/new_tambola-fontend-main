import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';

import '../SelectRoom/widgets/coustom_button_text.dart';

class ReferEarnCard extends StatelessWidget {
  const ReferEarnCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Container(
          width: 359.w,
          height: 228.h,
          decoration: BoxDecoration(gradient: blueGradient),
          child: Column(children: [
            SizedBox(height: 15.h),
            SizedBox(
              height: 28.h,
              child: NewCoustomText2(
                text: "REFER & EARN",
                fontsize: 25.sp,
                fontWeight: FontWeight.bold,
                color: newmetalliccard.colors,
              ),
            ),
            Row(
              children: [
                SizedBox(width: 15.w),
                Column(
                  children: [
                    NewCoustomText2(
                      text: "Refer a Friend and GET",
                      fontsize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: newmetalliccard.colors,
                    ),
                    SizedBox(height: 13.h),
                    NewCoustomText2(
                      text: "When they play or add\n money in wallet",
                      fontsize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: newmetalliccard.colors,
                    ),
                  ],
                ),
                SizedBox(width: 20.w),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: NewCoustomText2(
                    text: " ???10",
                    fontsize: 35.sp,
                    fontWeight: FontWeight.bold,
                    color: newfireliner.colors,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Image.asset("assets/images/coinss.png",
                      width: 90.w, height: 100.h),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 35.w),
                Column(
                  children: [
                    NewCoustomText2(
                      text: "Promo Code",
                      fontsize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: newmetalliccard.colors,
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      width: 104.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: fromCssColor("#D9D9D9"),
                      ),
                      child: Center(
                        child: NewCoustomText(
                          text: "QR618@2",
                          fontsize: 11.sp,
                          fontWeight: FontWeight.bold,
                          color: newblacklinergradient.colors,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 80.w),
                Column(
                  children: [
                    NewCoustomText2(
                      text: "Invite people",
                      fontsize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: newmetalliccard.colors,
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      width: 104.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: newfireliner),
                      child: Row(
                        children: [
                          SizedBox(width: 13.w),
                          NewCoustomText(
                            text: "Share code",
                            fontsize: 11.sp,
                            fontWeight: FontWeight.bold,
                            color: newblacklinergradient.colors,
                          ),
                          SizedBox(width: 3.w),
                          Icon(
                            Icons.file_upload_outlined,
                            color: Color.fromARGB(255, 0, 32, 58),
                            size: 18.sp,
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ]),
        )),
      ),
      designSize: const Size(428, 926),
    );
  }
}
