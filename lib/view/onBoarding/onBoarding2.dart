import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({super.key});

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo1.png"),
              sizedBoxHeight(12.h),
              SizedBox(
                width: 204.w,
                child: Text(
                  'Welcome to wedzy Business',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 22.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.22,
                  ),
                ),
              ),
              sizedBoxHeight(22.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Create your online store in just",
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 18.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.18,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "3 step",
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 15.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.15,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Here’s how it works:',
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 15.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.15,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Get.toNamed("/registration1");
                },
                child: Container(
                  width: 328.w,
                  height: 50.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFEF2B7B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.15,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
