import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';

import '../../Utils/themedata.dart';

class Registration2 extends StatefulWidget {
  const Registration2({super.key});

  @override
  State<Registration2> createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        preferredSize: const Size.fromHeight(50),
        titleTxt: 'Create Account',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizedBoxHeight(28.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 15.w,
                                  height: 15.h,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEE3764),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 0.40.w,
                                          color: Color(0xFFEE3764)),
                                    ),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.check,
                                      size: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                Text(
                                  'Details',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF373434),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.15,
                                  ),
                                )
                              ],
                            ),
                            sizedBoxHeight(8.h),
                            Container(
                              width: 104.w,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1.w,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFEE3764),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 15.w,
                                  height: 15.h,
                                  decoration: ShapeDecoration(
                                    color: Color(0x00D9D9D9),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 0.40.w,
                                          color: Color(0xFFEE3764)),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFEE3764),
                                        fontSize: 10.sp,
                                        fontFamily: 'AvenirNextCyr',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.10,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                Text(
                                  'ID Proof',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFEE3764),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.15,
                                  ),
                                )
                              ],
                            ),
                            sizedBoxHeight(8.h),
                            Container(
                              width: 104.w,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1.w,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFEE3764),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 15.h,
                                  height: 15.h,
                                  decoration: ShapeDecoration(
                                    color: Color(0x00D9D9D9),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 0.40.w,
                                          color: Color(0xFF909090)),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '3',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF909090),
                                        fontSize: 10.sp,
                                        fontFamily: 'AvenirNextCyr',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.10,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                Text(
                                  'Store',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF909090),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.15,
                                  ),
                                )
                              ],
                            ),
                            sizedBoxHeight(8.h),
                            Container(
                              width: 104.w,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1.w,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF909090),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Documents for KYC',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 18.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.18,
                          ),
                        ),
                        sizedBoxWidth(5.w),
                        Icon(Icons.info_outline)
                      ],
                    ),
                    sizedBoxHeight(10.h),
                    Text(
                      'Automatically verifies your documents needed for kYC and account opening on wedzy business',
                      style: TextStyle(
                        color: Color(0xFF373434),
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.15,
                      ),
                    ),
                    sizedBoxHeight(77.h),
                    SvgPicture.asset("assets/images/folder.svg"),
                    sizedBoxHeight(164.h),
                    CustomButton(
                      text: 'Proceed For KYC',
                      onTap: () {
                        Get.toNamed("/registration3");
                      },
                    ),
                    sizedBoxHeight(100.h)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
