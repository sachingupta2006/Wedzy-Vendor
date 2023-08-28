// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';

import '../../../../../Utils/Common/CustomAppBarDynamic.dart';
import '../../../../../Utils/themedata.dart';

class New_user extends StatefulWidget {
  const New_user({super.key});

  @override
  State<New_user> createState() => _New_userState();
}

class _New_userState extends State<New_user> {
  String? text;
  var ProductBool = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.all(16.w),
      //   child: CustomButton(
      //     text: 'Next',
      //     onTap: () {
      //       Get.toNamed(ProductBool.value ? '/wedding_Product' : '/product');
      //     },
      //   ),
      // ),
      appBar: CustomAppBarDynamic(
        titleTxt: 'Products',
        preferredSize: const Size.fromHeight(50),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              sizedBoxHeight(60.h),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/product');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 325.w,
                          height: 150.h,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('assets/images/background.png')),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.15, color: Color(0xFF9B9B9B)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F3C3C3C),
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            top: -50,
                            left: 0,
                            child: Image.asset(
                              'assets/images/ring.png',
                              width: 150,
                              height: 200,
                            )),
                        Positioned(
                            top: 10,
                            right: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // SizedBox(
                                //   height: 30,
                                //   width: 30,
                                //   child: GestureDetector(
                                //     onTap: () {
                                //       ProductBool.value = !ProductBool.value;
                                //     },
                                //     child: CircleAvatar(
                                //       radius: 11.h,
                                //       backgroundColor: AppColors.buttoncolour,
                                //       child: CircleAvatar(
                                //         radius: 15.h,
                                //         backgroundColor: AppColors.white,
                                //         child: Obx(() => CircleAvatar(
                                //               radius: 6.h,
                                //               backgroundColor: ProductBool.value
                                //                   ? AppColors.white
                                //                   : AppColors.buttoncolour,
                                //             )),
                                //       ),
                                //     ),
                                //   ),
                                // ),

                                sizedBoxHeight(40.h),
                                Padding(
                                  padding: EdgeInsets.only(right: 50.w),
                                  child: const Text(
                                    'Jewellery',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF373434),
                                      fontSize: 20,
                                      fontFamily: 'AvenirNextCyr',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.20,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              sizedBoxHeight(50.h),
              GestureDetector(
                onTap: (){
                  Get.toNamed('/wedding_Product');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 325.w,
                          height: 150.h,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('assets/images/background.png')),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.15, color: Color(0xFF9B9B9B)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F3C3C3C),
                                blurRadius: 4,
                                offset: Offset(0, 2),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            top: -50,
                            left: 0,
                            child: Image.asset(
                              'assets/images/wedding.png',
                              width: 150,
                              height: 190,
                            )),
                        Positioned(
                            top: 10,
                            right: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                // SizedBox(
                                //   height: 30,
                                //   width: 30,
                                //   child: GestureDetector(
                                //     onTap: () {
                                //       ProductBool.value = !ProductBool.value;
                                //     },
                                //     child: CircleAvatar(
                                //       radius: 11.h,
                                //       backgroundColor: AppColors.buttoncolour,
                                //       child: CircleAvatar(
                                //         radius: 15.h,
                                //         backgroundColor: AppColors.white,
                                //         child: Obx(() => CircleAvatar(
                                //               radius: 6.h,
                                //               backgroundColor: ProductBool.value
                                //                   ? AppColors.buttoncolour
                                //                   : AppColors.white,
                                //             )),
                                //       ),
                                //     ),
                                //   ),
                                // ),
              
                                sizedBoxHeight(40.h),
                                Padding(
                                  padding: EdgeInsets.only(right: 45.w),
                                  child: const Text(
                                    'Wedding wear',
                                    style: TextStyle(
                                      color: Color(0xFF373434),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              sizedBoxHeight(80.h),
            ],
          ),
        ),
      ),
    );
  }
}
