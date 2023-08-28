import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/themedata.dart';

class Fingercompleted extends StatefulWidget {
  const Fingercompleted({super.key});

  @override
  State<Fingercompleted> createState() => _FingercompletedState();
}

class _FingercompletedState extends State<Fingercompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: "Set-Up Touch Id",
        preferredSize: Size.fromHeight(50),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            sizedBoxHeight(42.h),
            Text(
              'Fingerprint Added Successfully',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(97.h),
            LottieBuilder.asset(
              "assets/json/fingerprintdone.json",
              width: 179.w,
              height: 179.h,
            ),
            sizedBoxHeight(101.h),
            Text(
              'On Set Up, Any Fingerprint You Save On The Application May Access Your Account',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(94.h),
            CustomButton(
              text: "Continue",
              onTap: () {
                 setState(() {
                  
                var snackBar = SnackBar(
                    duration: Duration(milliseconds: 1500),
                    elevation: 1,
                    // padding: EdgeInsets.symmetric(horizontal: 0.w),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Colors.grey)),
                    backgroundColor: Colors.white,
                    // width: 360.w,
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Fingerprint added successfully',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          width: 25.w,
                          height: 25.h,
                          decoration: ShapeDecoration(
                            color: Color(0xFF009B3F),
                            shape: OvalBorder(),
                          ),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                
                Get.toNamed('/settings');
                });
              },
            )
          ],
        ),
      )),
    );
  }
}
