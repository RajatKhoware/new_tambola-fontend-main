import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/card_1.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/coustom_button_text.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/reuseable_card_select_room.dart';
// import 'package:tambola_frontend/widgets/navbar/new_nav_bar.dart';

import '../../constants/gradients.dart';
import '../../widgets/header.dart';

class SelectRoom extends StatelessWidget {
  const SelectRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 197, 197, 197)),
          child: Column(children: [
            HeaderWidget(
              gradient1: whitegradient,
              gradient2: greenLinear,
              gradient3: whitegradient,
              gradient4: whitegradient,
              gradient5: whitegradient,
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 218.15.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    gradient: blueLiner2Gradient),
                child: Row(
                  children: [
                    SizedBox(width: 15.w),
                    SizedBox(
                      width: 154.w,
                      height: 30.h,
                      child: NewCoustomText(
                          text: "Select Game",
                          fontsize: 24.sp,
                          fontWeight: FontWeight.w500,
                          color: metallicGradient.colors),
                    ),
                    SizedBox(width: 10.w),
                    Image.asset(
                      "assets/icons/i.png",
                      width: 8.w,
                      height: 30.h,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                children: [
                  SelectRoomCard1(),
                  SizedBox(height: 20.h),
                  SelectRoomReuseableCard(
                    colors: newbrownliner.colors,
                    Roomof: '20',
                    gradient1: newbrownliner,
                    amount1: "35",
                    amount2: "7000",
                  ),
                  SizedBox(height: 20.h),
                  SelectRoomReuseableCard(
                    colors: newdarkpurplepastelliner.colors,
                    Roomof: '50',
                    gradient1: newdarkpurplepastelliner,
                    amount1: "65",
                    amount2: "1500",
                  ),
                  SizedBox(height: 20.h),
                  SelectRoomReuseableCard(
                    colors: newblacklinergradient.colors,
                    Roomof: '100',
                    gradient1: newblacklinergradient,
                    amount1: "150",
                    amount2: "30000",
                  ),
                  SizedBox(height: 20.h),
                  SelectRoomReuseableCard(
                    colors: newpurpleredliner.colors,
                    Roomof: '500',
                    gradient1: newpurpleredliner,
                    amount1: "7500",
                    amount2: "15000",
                  ),
                  SizedBox(height: 20.h),
                  SelectRoomReuseableCard(
                    colors: newbluepurpleliner.colors,
                    Roomof: '1000',
                    gradient1: newbluepurpleliner,
                    amount1: "15000",
                    amount2: "300000",
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ]),
        ),
        // bottomNavigationBar: NewNavBar(),
      ),
      designSize: const Size(428, 915),
    );
  }
}
