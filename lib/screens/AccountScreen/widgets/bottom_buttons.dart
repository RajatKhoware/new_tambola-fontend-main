import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tambola_frontend/screens/WalletCard/wallet_card.dart';
import 'package:tambola_frontend/widgets/reuseable_account_containers.dart';

import '../../CustomerSupport/customer_support_3.dart';
import '../../SettingCard/setting_card.dart';
import '../../TransactionHistory/transaction_history.dart';

class CircularButtons extends StatelessWidget {
  const CircularButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => SizedBox(
        width: 428.w,
        height: 150.h,
        child: SizedBox(
          width: 358.w,
          height: 74.44.h,
          child: Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReuseAbleCircularButtons(
                      ontap: () {
                        showDialog(
                            useSafeArea: false,
                            context: context,
                            builder: (context) => SettingCard());
                      },
                      icon: const Icon(Icons.settings)),
                  ReuseAbleCircularButtons(
                      ontap: () {}, icon: const Icon(Icons.verified_outlined)),
                  ReuseAbleCircularButtons(
                    ontap: () {
                      showDialog(
                          useSafeArea: false,
                          context: context,
                          builder: (context) => TransactionHistory());
                    },
                    icon: const Icon(Icons.notes),
                  ),
                  ReuseAbleCircularButtons(
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => CustomerSupport3())));
                      },
                      icon: const Icon(Icons.account_box)),
                ]),
          ),
        ),
      ),
      designSize: const Size(428, 926),
    );
  }
}
