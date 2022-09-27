import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tambola_frontend/constants/colors.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/coustom_button_text.dart';
import 'package:tambola_frontend/services/auth_service.dart';
import 'package:tambola_frontend/widgets/build_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: Container(
          height: 926.h,
          width: 428.w,
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          decoration: const BoxDecoration(gradient: blueLiner2Gradient),
          child: Column(children: [
            SizedBox(height: 150.h),
            SizedBox(
              width: 280.w,
              height: 78.h,
              child: Image.asset(
                "assets/icons/Tambola.png",
              ),
            ),
            SizedBox(height: 30.h),
            Center(
                child: NewCoustomText2(
                    text: "WELCOME",
                    fontsize: 25.sp,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                    color: newmetalliccard.colors)),
            SizedBox(height: 30.h),
            NewCoustomText2(
                text: "Login / Sign UP",
                fontsize: 19.sp,
                fontFamily: "Inter",
                fontWeight: FontWeight.w600,
                color: newmetalliccard.colors),
            SizedBox(height: 50.h),
            SizedBox(
              width: 369.w,
              height: 250.h,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NewCoustomText2(
                        text: "   Email / Mobile No.",
                        fontsize: 13.sp,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600,
                        color: newmetalliccard.colors),
                    SizedBox(height: 10.h),
                    BuildTextField2(
                      label: 'EMAIL / MOBILE NO.',
                      hintText: 'ENTER YOUR EMAIL OR MOBILE NUMBER',
                      textGradient: fireLinearGradient,
                      controller: _usernameController,
                    ),
                    SizedBox(height: 25.h),
                    NewCoustomText2(
                        text: "   PASSWORD",
                        fontsize: 13.sp,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600,
                        color: newmetalliccard.colors),
                    SizedBox(height: 10.h),
                    BuildTextField2(
                      label: 'PASSWORD',
                      hintText: 'PASSWORD',
                      type: TextInputType.visiblePassword,
                      textGradient: fireLinearGradient,
                      controller: _passwordController,
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            _auth.signInWithUsernameOrPhone(
                                username: _usernameController.text,
                                password: _passwordController.text,
                                context: context);
                          },
                          child: CustomButton2(
                              text: "Login",
                              fontsize: 23.sp,
                              fontWeight: FontWeight.bold,
                              width: 145.w,
                              width2: 118.w,
                              height: 58.h,
                              height2: 42.h,
                              gradient1: newblacklinergradient,
                              gradient2: newmetalliccard,
                              color: newblacklinergradient.colors),
                        ),
                        SizedBox(width: 30.w),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/sign-up-start');
                          },
                          child: CustomButton2(
                              text: "Sign UP",
                              fontsize: 23.sp,
                              fontWeight: FontWeight.w500,
                              width: 145.w,
                              width2: 118.w,
                              height: 58.h,
                              height2: 42.h,
                              gradient1: newmetalliccard,
                              gradient2: newblacklinergradient,
                              color: newmetalliccard.colors),
                        ),
                      ],
                    ),
                  ]),
            ),
            SizedBox(height: 5.h),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/bottom-bar');
              },
              child: CustomButton2(
                  text: "Guest",
                  fontsize: 23.sp,
                  fontWeight: FontWeight.w500,
                  width: 180.w,
                  width2: 150.w,
                  height: 58.h,
                  height2: 42.h,
                  gradient1: newfireliner,
                  gradient2: newblacklinergradient,
                  color: newfireliner.colors),
            ),
            SizedBox(height: 30.h),
            Center(
              child: NewCoustomText2(
                  text: "SIGN UP /LOGIN IN WITH",
                  fontsize: 16.sp,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                  color: newmetalliccard.colors),
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 23.r,
                  backgroundImage: AssetImage("assets/logos/google.jpg"),
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: 25.w),
                CircleAvatar(
                  radius: 23.r,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/logos/fb.png"),
                ),
              ],
            )
          ]),
        ),
      ),
      designSize: const Size(428, 926),
    );
  }
}
