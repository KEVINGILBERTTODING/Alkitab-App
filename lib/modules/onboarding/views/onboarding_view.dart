import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yesheis/core/constans/constans.dart';
import 'package:yesheis/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:yesheis/styles/style_app.dart';
import 'package:dropdown_search/dropdown_search.dart';

class OnboardingView extends GetView<OnBoardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/img/jesus.png'),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    Constans.APPNAME,
                    style: TextStyle(fontFamily: 'rbbold', fontSize: 30.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    Constans.TXT_ONBOARDING,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'rbmed',
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(StyleApp.primary),
                    ),
                    onPressed: () {
                      controller.gotoHome();
                    },
                    child: Text(
                      'Mulai Sekarang',
                      style: TextStyle(
                          fontFamily: 'rbmed',
                          color: Colors.white,
                          fontSize: 15.sp),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
