import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tambola_frontend/constants/colors.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';
import 'package:tambola_frontend/screens/NewSelectMatch/select_room.dart';
import '../SelectRoom/select_room.dart';
import '../SelectRoom/widgets/coustom_button_text.dart';

class RoyalTambolaCard extends StatelessWidget {
  const RoyalTambolaCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Container(
        // height: 261.h,
        width: 368.w,
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
        decoration: BoxDecoration(
            gradient: newblacklinergradient,
            boxShadow: [boxShadowWallet],
            borderRadius: BorderRadius.circular(30.r)),
        child: Column(children: [
          SizedBox(height: 5.0.h),
          Row(
            children: [
              SizedBox(width: 70.w),
              NewCoustomText2(
                  text: 'Total Active players     ',
                  fontsize: 11.sp,
                  fontWeight: FontWeight.w700,
                  color: newfireliner.colors),
              NewCoustomText2(
                  text: '11142',
                  fontsize: 11.sp,
                  fontWeight: FontWeight.w700,
                  color: newfireliner.colors),
            ],
          ),
          SizedBox(height: 24.h),
          NewCoustomText2(
              text: "ROYAL TAMBOLA",
              fontsize: 23.sp,
              fontWeight: FontWeight.bold,
              color: newfireliner.colors),
          NewCoustomText2(
              text: "WINNING PRIZE",
              fontsize: 24.sp,
              fontWeight: FontWeight.bold,
              color: newfireliner.colors),
          SizedBox(height: 24.h),
          RichText(
              text: TextSpan(children: [
            WidgetSpan(
                child: Image(
              height: 30.h,
              width: 30.w,
              image: AssetImage('assets/images/coin-small.png'),
            )),
            WidgetSpan(
                child: NewCoustomText(
                    text: "4 - ",
                    fontsize: 25.sp,
                    fontWeight: FontWeight.bold,
                    color: newfireliner.colors)),
            WidgetSpan(
                child: Image(
              height: 30.h,
              width: 30.w,
              image: AssetImage('assets/images/coin-small.png'),
            )),
            WidgetSpan(
                child: NewCoustomText(
                    text: "3,00,000",
                    fontsize: 25.sp,
                    fontWeight: FontWeight.bold,
                    color: newfireliner.colors))
          ])),
          SizedBox(height: 24.h),
          Container(
            width: 332.w,
            height: 52.h,
            child: Row(
              children: [
                SizedBox(width: 15.w),
                Image(
                  height: 40.h,
                  width: 25.w,
                  image: AssetImage('assets/images/PlayroomVector2.png'),
                ),
                SizedBox(width: 10.w),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectRoom()));
                    },
                    child: CustomButton2(
                        text: "Play Now",
                        fontsize: 23.sp,
                        fontWeight: FontWeight.bold,
                        width: 200.w,
                        width2: 170.w,
                        height: 52.h,
                        height2: 42.h,
                        gradient1: newfireliner,
                        gradient2: newblacklinergradient,
                        color: newfireliner.colors)),
                SizedBox(width: 10.w),
                Image(
                  height: 40.h,
                  width: 25.w,
                  image: AssetImage('assets/images/PlayroomVector2.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.w),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SelectMatchRoom()));
              },
              child: CustomButton2(
                  text: "Join Now",
                  fontsize: 23.sp,
                  fontWeight: FontWeight.bold,
                  width: 200.w,
                  width2: 170.w,
                  height: 52.h,
                  height2: 42.h,
                  gradient1: newfireliner,
                  gradient2: newblacklinergradient,
                  color: newfireliner.colors)),
        ]),
      ),
    );
  }
}
