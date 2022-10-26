import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:tambola_frontend/Features/waiting_room/waiting_room/presentation/widgets/list_of_waiting_user.dart';
import '../../../../../core/constants/gradients.dart';
import '../../../../../core/constants/new_gradints.dart';
import '../../../../../core/providers/game_provider.dart';
import '../../../../../core/services/game_services.dart';
import '../../../../../core/widgets/header.dart';
import '../../../../game/presentation/screens/tambola_board.dart';
import '../../../../select_match/presentation/widgets/coustom_button_text.dart';

class WaitingRoomScreen extends StatefulWidget {
  final int activeCount;
  final String matchID;
  final bool isCreater;

  const WaitingRoomScreen(
      {Key? key,
      this.activeCount = 2,
      required this.matchID,
      required this.isCreater})
      : super(key: key);

  @override
  State<WaitingRoomScreen> createState() => _WaitingRoomScreenState();
}

Timer? _timer;

class _WaitingRoomScreenState extends State<WaitingRoomScreen> {
  bool isCounted = false;
  int _start = 10;

  @override
  void initState() {
    super.initState();
    List<dynamic> draw = context.read<GameProvider>().draw;

    if (draw.isNotEmpty) {
      log("UPDATED TO HOST");
      checkActiveCount();
    }
  }

  void checkActiveCount() {
    Provider.of<GameProvider>(context, listen: false).changeStart();
    // setState(() {
    //   isStart = true;
    startTimer();
    // });
    // }
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TambolaBoard(
                          matchID: widget.matchID,
                        )));
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!widget.isCreater && !isCounted

          //     Provider.of<GameProvider>(context, listen: false).draw.isEmpty &&
          //     Provider.of<GameProvider>(context, listen: false).isStart
          ) {
        isCounted = true;
        GameServices().startMatch(matchID: widget.matchID, context: context);
      }
    });
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: newmetalliccard),
          child: Column(
            children: [
              HeaderWidget(
                gradient1: whitegradient,
                gradient2: whitegradient,
                gradient3: whitegradient,
                gradient4: whitegradient,
                gradient5: greenLinear,
              ),
              SizedBox(height: 15.h),
              SingleChildScrollView(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TambolaBoard(
                                  matchID: '',
                                )));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    height: 627.h,
                    width: 359.w,
                    decoration: BoxDecoration(
                        gradient: newblue2liner,
                        borderRadius: BorderRadius.circular(30).r,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(94, 58, 58, 58),
                              offset: Offset(6, 8),
                              spreadRadius: 4.r,
                              blurRadius: 6.r)
                        ]),
                    child: Column(children: [
                      Row(
                        children: [
                          SizedBox(width: 30.w),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile_photo.png'),
                            radius: 50.r,
                          ),
                          SizedBox(width: 25.w),
                          Column(
                            children: [
                              NewCoustomText2(
                                  text: "User Name".tr,
                                  fontsize: 28.sp,
                                  fontWeight: FontWeight.bold,
                                  color: metallicGradient.colors),
                              SizedBox(height: 5.h),
                              NewCoustomText2(
                                  text: "User ID".tr,
                                  fontsize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: newredliner.colors),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10.h),
                      NewCoustomText2(
                          text: "Wating Time".tr,
                          fontsize: 35.sp,
                          fontWeight: FontWeight.bold,
                          color: metallicGradient.colors),
                      SizedBox(height: 10.h),
                      Consumer<GameProvider>(builder: (context, gameState, _) {
                        if (gameState.draw.isNotEmpty && !gameState.isStart) {
                          checkActiveCount();
                        }

                        return RichText(
                            text: TextSpan(children: [
                          WidgetSpan(
                            child: NewCoustomText2(
                                text: _start.toString(),
                                fontsize: 35.sp,
                                fontWeight: FontWeight.bold,
                                color: newfireliner.colors),
                          ),
                          WidgetSpan(
                            child: NewCoustomText2(
                                text: " Seconds".tr,
                                fontsize: 35.sp,
                                fontWeight: FontWeight.w700,
                                color: metallicGradient.colors),
                          ),
                        ]));
                      }),
                      SizedBox(height: 10.h),
                      Container(
                        width: 320.w,
                        height: 289.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                child: ListView(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              children: [
                                ListOfWaitingUser(
                                  provider:
                                      AssetImage('assets/avatars/hacker.png'),
                                ),
                                ListOfWaitingUser(
                                  provider:
                                      AssetImage('assets/avatars/bear.png'),
                                ),
                                ListOfWaitingUser(
                                  provider:
                                      AssetImage('assets/avatars/boy.png'),
                                ),
                                ListOfWaitingUser(
                                  provider: AssetImage(
                                      'assets/avatars/delivery-boy.png'),
                                ),
                                ListOfWaitingUser(
                                  provider:
                                      AssetImage('assets/avatars/woman.png'),
                                ),
                                ListOfWaitingUser(
                                  provider:
                                      AssetImage('assets/avatars/man.png'),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      NewCoustomText2(
                          text: "Get Ready !".tr,
                          fontsize: 28.sp,
                          fontWeight: FontWeight.bold,
                          color: metallicGradient.colors),
                    ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      designSize: const Size(428, 926),
    );
  }
}
