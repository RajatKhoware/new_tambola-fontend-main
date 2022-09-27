import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/coustom_button_text.dart';

class WinningCard extends StatelessWidget {
  const WinningCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        backgroundColor: Colors.brown,
        body: Center(
            child: Container(
          width: 388.w,
          height: 584.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              gradient: newgreycarddarkliner),
          child: Center(
              child: Container(
            width: 356.w,
            height: 534.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                gradient: newblue2liner),
            child: Column(children: [
              SizedBox(height: 30.h),
              Image.asset(
                'assets/images/winning_icon.png',
                width: 136.w,
                height: 129.h,
              ),
              SizedBox(height: 25.h),
              NewCoustomText(
                text: "CONGRATULATIONS",
                fontsize: 28.sp,
                fontFamily: "Latto",
                fontWeight: FontWeight.bold,
                color: newmetallicGradient.colors,
              ),
              SizedBox(height: 3.h),
              NewCoustomText(
                text: "YOU WON FIRST FIVE",
                fontsize: 25.sp,
                fontFamily: "Latto",
                fontWeight: FontWeight.bold,
                color: newmetallicGradient.colors,
              ),
              SizedBox(height: 50.h),
              NewCoustomText(
                text: "₹400",
                fontsize: 40.sp,
                fontWeight: FontWeight.bold,
                color: newmetallicGradient.colors,
              ),
              SizedBox(height: 20.h),
              NewCoustomText(
                text: " YOUR REWARD WILL BE\nADDED IN YOUR WALLET",
                fontsize: 20.sp,
                fontFamily: "Latto",
                fontWeight: FontWeight.bold,
                color: newgreycarddarkliner.colors,
              ),
              SizedBox(height: 30.h),
              CustomButton2(
                  text: "WELL PLAYED",
                  fontsize: 15.sp,
                  fontWeight: FontWeight.w500,
                  width: 136.w,
                  width2: 124.w,
                  height: 47.h,
                  height2: 41.h,
                  gradient1: newblue2liner,
                  gradient2: blueGradient,
                  color: newmetallicGradient.colors)
            ]),
          )),
        )),
      ),
      designSize: const Size(428, 926),
    );
  }
}

