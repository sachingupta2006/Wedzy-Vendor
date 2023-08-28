import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/CustomBottomBar.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/view/onBoarding/Home/home.dart';

class Registration3 extends StatefulWidget {
  const Registration3({super.key});

  @override
  State<Registration3> createState() => _Registration3State();
}

class _Registration3State extends State<Registration3> {
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
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
                                          width: 0.40,
                                          color: Color(0xFFEE3764)),
                                    ),
                                  ),
                                  child: const Center(
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
                                    color: Color(0xFFEE3764),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 0.40.w,
                                          color: Color(0xFFEE3764)),
                                    ),
                                  ),
                                  child: const Center(
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
                                  'ID Proof',
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
                                      '3',
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
                                const SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  'Store',
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
                      ],
                    ),
                    sizedBoxHeight(26.h),
                    Text(
                      'Do you provide services or\nproducts?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    sizedBoxHeight(31.h),
                    Container(
                      // height: 225.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F888888),
                            blurRadius: 4,
                            offset: Offset(0, -3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/service1.png",
                            height: 142.h,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                          sizedBoxHeight(10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Services',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFEE3764),
                                          fontSize: 18.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  sizedBoxHeight(2.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '(catering, venue, photograpgy, etc)',
                                        style: TextStyle(
                                          color: Color(0xFFEE3764),
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  sizedBoxHeight(10.h)
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  productVisibility.value = false;
                                  Get.to(() => CustomBottomBar(pageIndex: 0));
                                },
                                child: Container(
                                  width: 37,
                                  height: 37,
                                  decoration: const ShapeDecoration(
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFFEF2B7B)),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Color(0xFFEF2B7B),
                                  ),
                                ),
                              )
                            ],
                          ),
                          sizedBoxHeight(5.h),
                          Container(
                            width: double.infinity,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 2.w,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFFEE3764),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 31.h),
                    Container(
                      // height: 205.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F888888),
                            blurRadius: 4,
                            offset: Offset(0, -3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/product.png",
                            height: 142,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                          sizedBoxHeight(10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Product',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFEE3764),
                                          fontSize: 18.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  sizedBoxHeight(2.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '(outfits, wedding rings, einvites, etc)',
                                        style: TextStyle(
                                          color: Color(0xFFEE3764),
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  sizedBoxHeight(10.h)
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  productVisibility.value = false;
                                  Get.to(() => CustomBottomBar(pageIndex: 1));
                                },
                                child: Container(
                                  width: 37,
                                  height: 37,
                                  decoration: const ShapeDecoration(
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFFEF2B7B)),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Color(0xFFEF2B7B),
                                  ),
                                ),
                              )
                            ],
                          ),
                          sizedBoxHeight(5.h),
                          Container(
                            width: double.infinity,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 2.w,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFFEE3764),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    sizedBoxHeight(30.h),
                    // CustomButton(
                    //   text: 'Proceed For KYC',
                    //   onTap: () {
                    //     Get.toNamed("/registrationotp");
                    //   },
                    // ),
                    sizedBoxHeight(45.h)
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
