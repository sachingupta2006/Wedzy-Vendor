import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo1.png"),
              sizedBoxHeight(17.h),
              Text(
                'Wedzy Business',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 22,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.22,
                ),
              ),
              sizedBoxHeight(17.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                  'The one-stop shop for all your business needs.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.15,
                  ),
                ),
              ),
              sizedBoxHeight(62.h),
              InkWell(
                onTap: () {
                  Get.toNamed("/loginScreen");
                },
                child: Container(
                  width: 328,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Color(0x00D9D9D9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.25, color: Color(0xFFEF2B7B)),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFEF2B7B),
                        fontSize: 15,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.15,
                      ),
                    ),
                  ),
                ),
              ),
              sizedBoxHeight(24.h),
              InkWell(
                onTap: () {
                  Get.toNamed("/onboarding2");
                },
                child: Container(
                  width: 328,
                  height: 50,
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
                      'Create Account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
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
