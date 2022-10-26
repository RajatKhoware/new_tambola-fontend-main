import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tambola_frontend/Features/account_page/presentation/widgets/account_header.dart';
import 'package:tambola_frontend/Features/select_match/presentation/widgets/coustom_button_text.dart';
import 'package:tambola_frontend/core/constants/new_gradints.dart';

import '../../../../core/widgets/build_text_field.dart';

TextEditingController _playersController = TextEditingController();

class InviteRoomScreen extends StatelessWidget {
  const InviteRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: newpurpleredliner),
          child: Column(children: [
            AccountScreenHeader(),
            SizedBox(
              width: 428.w,
              height: 713.h,
              child: Column(children: [
                SizedBox(width: 428.w, height: 150.h),
                SizedBox(
                  width: 350.w,
                  height: 30.h,
                  child: Padding(
                    padding: EdgeInsets.only(left: 40.w),
                    child: NewCoustomText2(
                        text: "CREATE YOUR OWN ROOM",
                        fontsize: 22.sp,
                        fontWeight: FontWeight.bold,
                        color: newmetalliccard.colors),
                  ),
                ),
                SizedBox(height: 30.h),
                Container(
                  width: 378.w,
                  height: 370.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    gradient: newblacklinergradient,
                    border:
                        Border.all(width: 2.5.w, color: Colors.grey.shade300),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40.h),
                        Padding(
                          padding: EdgeInsets.only(left: 110.w),
                          child: NewCoustomText2(
                              text: "MATCH TYPE",
                              fontsize: 22.sp,
                              fontWeight: FontWeight.bold,
                              color: newmetalliccard.colors),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 20.h),
                          child: NewCoustomText2(
                            text: "NUMBER OF PLAYERS".tr,
                            fontsize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: newmetalliccard.colors,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Container(
                              width: 350.w,
                              height: 31.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.r),
                                  gradient: newmetalliccard),
                              child: TextFormField(
                                controller: _playersController,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 20.h),
                          child: NewCoustomText2(
                            text: "MATCH TYPE".tr,
                            fontsize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: newmetalliccard.colors,
                          ),
                        ),
                        SizedBox(height: 5.h),
                      ]),
                )
              ]),
            )
          ]),
        ),
      ),
      designSize: const Size(428, 915),
    );
  }
}
