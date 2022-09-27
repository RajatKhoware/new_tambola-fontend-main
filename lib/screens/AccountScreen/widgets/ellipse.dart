import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/coustom_button_text.dart';

class Ellipse extends StatelessWidget {
  const Ellipse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) => Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 23.w, top: 10.h, bottom: 10.h),
                  child: Container(
                    width: 145.w,
                    height: 142.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: newfireliner,
                      boxShadow: [boxShadowWallet],
                    ),
                    child: Image.asset(
                      'assets/images/face.png',
                      width: 136.w,
                      height: 134.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NewCoustomText2(
                          text: "User Name",
                          fontsize: 25.sp,
                          fontWeight: FontWeight.bold,
                          color: newgreytextgradient.colors,
                        ),
                        const SizedBox(height: 10),
                        NewCoustomText2(
                          text: "User ID",
                          fontsize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: newtamatoredliner.colors,
                        ),
                      ]),
                )
              ],
            ));
  }
}
