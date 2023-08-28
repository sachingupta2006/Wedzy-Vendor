import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/CustomFormContainer.dart';
import 'package:wedzy/Utils/Common/appbarservices.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/themedata.dart';

class MakeupPackagespage extends StatefulWidget {
  const MakeupPackagespage({
    Key? key,
    this.minValue = 0,
    this.maxValue = 10,
    this.minValue1 = 0,
    this.maxValue1 = 10,
    this.minValue2 = 0,
    this.maxValue2 = 10,
    this.minValue3 = 0,
    this.maxValue3 = 10,
    this.minValue4 = 0,
    this.maxValue4 = 10,
    this.minValue5 = 0,
    this.maxValue5 = 10,
    this.minValue6 = 0,
    this.maxValue6 = 10,
    this.minValue7 = 0,
    this.maxValue7 = 10,
    this.minValue8 = 0,
    this.maxValue8 = 10,
    this.minValue9 = 0,
    this.maxValue9 = 10,
    this.minValue10 = 0,
    this.maxValue10 = 10,
    this.minValue11 = 0,
    this.maxValue11 = 10,
  }) : super(key: key);
  final int minValue;
  final int maxValue;
  final int minValue1;
  final int maxValue1;

  final int minValue2;
  final int maxValue2;

  final int minValue3;
  final int maxValue3;

  final int minValue4;
  final int maxValue4;

  final int minValue5;
  final int maxValue5;

  final int minValue6;
  final int maxValue6;

  final int minValue7;
  final int maxValue7;

  final int minValue8;
  final int maxValue8;

  final int minValue9;
  final int maxValue9;

  final int minValue10;
  final int maxValue10;

  final int minValue11;
  final int maxValue11;

  @override
  State<MakeupPackagespage> createState() => _MakeupPackagespageState();
}

class _MakeupPackagespageState extends State<MakeupPackagespage> {
  int counter = 0;
  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;
  int counter4 = 0;
  int counter5 = 0;
  int counter6 = 0;
  int counter7 = 0;
  int counter8 = 0;

  int counter9 = 0;

  int counter10 = 0;

  int counter11 = 0;

  bool lead = false;
  bool flair = false;
  bool bar = false;
  bool mixo = false;

  String pack1 = "package1";
  String pack2 = "package2";
  String pack3 = "package3";
  String custom = "custom";

  bool packag1visible = true;
  bool pacakge2visible = true;
  bool pacakge3visible = true;
  bool customvisible = true;
  bool package5visible = true;
  bool package6visible = true;
  bool package7visible = true;

  bool packagcheck1visible = false;
  bool pacakgecheck2visible = false;
  bool pacakgecheck3visible = false;
  bool customcheckvisible = false;
  bool packagecheck5visible = false;
  bool packagecheck6visible = false;
  bool packagecheck7visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: "Packages",
        preferredSize: Size.fromHeight(50),
      ),
      // Appbarservices(titleTxt: "  Packages"),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(12.h),
            Container(
              width: 328.w,
              // height: 95.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F939393),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 9.w, right: 5.w, top: 16.h, bottom: 16.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.buttoncolour,
                              radius: 14.w,
                              child: CircleAvatar(
                                  radius: 12.5.w,
                                  backgroundColor: AppColors.buttoncolour,
                                  child: SvgPicture.asset(
                                    "assets/images/check.svg",
                                    width: 10.w,
                                    height: 10.h,
                                  )),
                            ),
                            Text(
                              'Select\nService',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        // sizedBoxWidth(12.w),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.buttoncolour,
                              radius: 14.w,
                              child: CircleAvatar(
                                  radius: 12.5.w,
                                  backgroundColor: AppColors.buttoncolour,
                                  child: SvgPicture.asset(
                                    "assets/images/check.svg",
                                    width: 10.w,
                                    height: 10.h,
                                  )),
                            ),
                            Text(
                              'Add \nInformation',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        // sizedBoxWidth(12.w),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.buttoncolour,
                              radius: 14.w,
                              child: CircleAvatar(
                                  radius: 12.5.w,
                                  backgroundColor: AppColors.buttoncolour,
                                  child: SvgPicture.asset(
                                    "assets/images/check.svg",
                                    width: 10.w,
                                    height: 10.h,
                                  )),
                            ),
                            Text(
                              'Add \nPortfolio',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        // sizedBoxWidth(10.w),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.buttoncolour,
                              radius: 14.w,
                              child: CircleAvatar(
                                radius: 12.5.w,
                                backgroundColor: AppColors.white,
                                child: Text(
                                  '4',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.buttoncolour,
                                    fontSize: 12.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Add \nPackage',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.buttoncolour,
                                fontSize: 13.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        // sizedBoxWidth(10.w),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 14.w,
                              child: CircleAvatar(
                                radius: 12.5.w,
                                backgroundColor: AppColors.white,
                                child: Text(
                                  '5',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Bookings\n',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    sizedBoxHeight(10.w),
                    Container(
                      width: 305.w,
                      height: 5.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFF2F8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 184.w,
                            height: 5.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFEE3764),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            sizedBoxHeight(23.h),
            Text(
              'Beauty service',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w700,
              ),
            ),
            sizedBoxHeight(15.h),
            Text(
              'Enter pricing for locations within mumbai',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(7.h),
            PackageTextformfield(
              leadingImage: "₹",
              // hintText: "Enter price of package",
            ),
            sizedBoxHeight(25.h),
            FDottedLine(
              color: Color(0xFFEE3764),
              width: 380.0,
              strokeWidth: 1.0,
              dottedLength: 4.0,
              space: 2.0,
            ),

            sizedBoxHeight(25.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // sizedBoxHeight(15.h),

                Text(
                  'Package Type 1',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 18.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(10.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'What is your Standard Package for one HD bridal makeup ?\n',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text:
                            '(If the bride will travel to the Salon/Studio/home)',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(7.h),
                CustomFormContainer(),
                sizedBoxHeight(20.h),
                Text(
                  'Enter price for make & hair',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(7.h),
                PackageTextformfield(
                  leadingImage: "₹",
                  // hintText: "Enter price of package",
                ),
                sizedBoxHeight(25.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 22.h,
                      child: Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side:
                            BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                        activeColor: const Color(0xffEF2B7B),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          // side: BorderSide(color: Color(0xffEF2B7B))
                        ),
                        value: packagcheck1visible,
                        onChanged: (value) {
                          setState(() {
                            packagcheck1visible = value!;
                            // pacakge3visible = !pacakge3visible;
                            // pacakge2visible = !pacakge2visible;
                            // customvisible = !customvisible;
                            // package5visible = !package5visible;
                            // package6visible = !package6visible;
                            // package7visible = !package7visible;

                            packag1visible = true;
                          });
                        },
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Make this package as recommended pacakge',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxHeight(25.h),
                FDottedLine(
                  color: Color(0xFFEE3764),
                  width: 380.0,
                  strokeWidth: 1.0,
                  dottedLength: 4.0,
                  space: 2.0,
                ),
                sizedBoxHeight(29.h),
              ],
            ),
            // sizedBoxHeight(29.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Package Type 2',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 18.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(7.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'What is your Standard Package for one HD bridal makeup?\n',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text:
                            '(If the lead/head makeup artist will travel to the location)',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(7.h),
                CustomFormContainer(),
                sizedBoxHeight(25.h),
                Text(
                  'Enter price for make & hair',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(7.h),
                PackageTextformfield(
                  leadingImage: "₹",
                  // hintText: "Enter price of package",
                ),
                sizedBoxHeight(25.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 22.h,
                      child: Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side:
                            BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                        activeColor: const Color(0xffEF2B7B),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          // side: BorderSide(color: Color(0xffEF2B7B))
                        ),
                        value: pacakgecheck2visible,
                        onChanged: (value) {
                          setState(() {
                            pacakgecheck2visible = value!;
                            pacakge3visible = !pacakge3visible;
                            packag1visible = !packag1visible;
                            customvisible = !customvisible;
                            package5visible = !package5visible;
                            package6visible = !package6visible;
                            package7visible = !package7visible;
                            pacakge2visible = true;
                          });
                        },
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Make this package as recommended pacakge',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxHeight(25.h),
                FDottedLine(
                  color: Color(0xFFEE3764),
                  width: 380.0,
                  strokeWidth: 1.0,
                  dottedLength: 4.0,
                  space: 2.0,
                ),
                sizedBoxHeight(29.h),
              ],
            ),
            // sizedBoxHeight(29.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Package Type 3',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 18.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(7.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'What is your Standard wedding Package only for bride?',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' (2 days event) \n(If the lead/head makeup artist will travel to the location)',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(7.h),
                CustomFormContainer(),
                sizedBoxHeight(25.h),
                Text(
                  'Enter price for make & hair for all wedding functions for the bride?',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(7.h),
                PackageTextformfield(
                  leadingImage: "₹",
                  // hintText: "Enter price of package",
                ),
                sizedBoxHeight(25.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 22.h,
                      child: Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side:
                            BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                        activeColor: const Color(0xffEF2B7B),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          // side: BorderSide(color: Color(0xffEF2B7B))
                        ),
                        value: pacakgecheck3visible,
                        onChanged: (value) {
                          setState(() {
                            pacakgecheck3visible = value!;
                            pacakge2visible = !pacakge2visible;
                            packag1visible = !packag1visible;
                            customvisible = !customvisible;
                            package5visible = !package5visible;
                            package6visible = !package6visible;
                            package7visible = !package7visible;
                            pacakge3visible = true;
                          });
                        },
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Make this package as recommended pacakge',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxHeight(25.h),
                FDottedLine(
                  color: Color(0xFFEE3764),
                  width: 380.0,
                  strokeWidth: 1.0,
                  dottedLength: 4.0,
                  space: 2.0,
                ),
                sizedBoxHeight(29.h),
              ],
            ),
            // sizedBoxHeight(29.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Package Type 4',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 18.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(7.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'What is your Standard wedding Package only for bride?',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' (1 day event with 2 or 3 wedding functions) \n(If the lead/head makeup artist will travel to the location)',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(7.h),
                CustomFormContainer(),
                sizedBoxHeight(25.h),
                Text(
                  'Enter price for make & hair ',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(7.h),
                PackageTextformfield(
                  leadingImage: "₹",
                  // hintText: "Enter price of package",
                ),
                sizedBoxHeight(20.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 22.h,
                      child: Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side:
                            BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                        activeColor: const Color(0xffEF2B7B),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          // side: BorderSide(color: Color(0xffEF2B7B))
                        ),
                        value: customcheckvisible,
                        onChanged: (value) {
                          setState(() {
                            customcheckvisible = value!;
                            packag1visible = !packag1visible;
                            pacakge2visible = !pacakge2visible;
                            pacakge3visible = !pacakge3visible;
                            package5visible = !package5visible;
                            package6visible = !package6visible;
                            package7visible = !package7visible;
                            customvisible = true;
                          });
                        },
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Make this package as recommended pacakge',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxHeight(25.h),
                FDottedLine(
                  color: Color(0xFFEE3764),
                  width: 380.0,
                  strokeWidth: 1.0,
                  dottedLength: 4.0,
                  space: 2.0,
                ),
                sizedBoxHeight(29.h),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Package Type 5',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 18.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(7.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'What is your Standard wedding Package? \n',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text:
                            '(If the lead/head makeup artist will travel to the location)',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(7.h),
                CustomFormContainer(),
                sizedBoxHeight(25.h),
                Text(
                  'Enter price for make & hair for bride & 5 bridesmaid/siders',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(7.h),
                PackageTextformfield(
                  leadingImage: "₹",
                  // hintText: "Enter price of package",
                ),
                sizedBoxHeight(20.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 22.h,
                      child: Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side:
                            BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                        activeColor: const Color(0xffEF2B7B),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          // side: BorderSide(color: Color(0xffEF2B7B))
                        ),
                        value: packagecheck5visible,
                        onChanged: (value) {
                          setState(() {
                            packagecheck5visible = value!;
                            packag1visible = !packag1visible;
                            pacakge2visible = !pacakge2visible;
                            pacakge3visible = !pacakge3visible;
                            customvisible = !customvisible;
                            package6visible = !package6visible;
                            package7visible = !package7visible;
                            package5visible = true;
                          });
                        },
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Make this package as recommended pacakge',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxHeight(25.h),
                FDottedLine(
                  color: Color(0xFFEE3764),
                  width: 380.0,
                  strokeWidth: 1.0,
                  dottedLength: 4.0,
                  space: 2.0,
                ),
                sizedBoxHeight(29.h),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Package Type 6',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 18.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(7.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'What is your Standard wedding Package? \n',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text:
                            '(If the assistant makeup artist will travel to the location)',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(7.h),
                CustomFormContainer(),
                sizedBoxHeight(25.h),
                Text(
                  'Enter price for make & hair for bride & 5 bridesmaid/siders',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(7.h),
                PackageTextformfield(
                  leadingImage: "₹",
                  // hintText: "Enter price of package",
                ),
                sizedBoxHeight(20.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 22.h,
                      child: Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side:
                            BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                        activeColor: const Color(0xffEF2B7B),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          // side: BorderSide(color: Color(0xffEF2B7B))
                        ),
                        value: packagecheck6visible,
                        onChanged: (value) {
                          setState(() {
                            packagecheck6visible = value!;
                            packag1visible = !packag1visible;
                            pacakge2visible = !pacakge2visible;
                            pacakge3visible = !pacakge3visible;
                            customvisible = !customvisible;
                            package5visible = !package5visible;
                            package7visible = !package7visible;

                            package6visible = true;
                          });
                        },
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Make this package as recommended pacakge',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxHeight(25.h),
                FDottedLine(
                  color: Color(0xFFEE3764),
                  width: 380.0,
                  strokeWidth: 1.0,
                  dottedLength: 4.0,
                  space: 2.0,
                ),
                sizedBoxHeight(29.h),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Package Type 7',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 18.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(7.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'What is your Standard wedding Package? \n',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text:
                            '(If the assistant makeup artist will travel to the location)',
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(7.h),
                CustomFormContainer(),
                sizedBoxHeight(25.h),
                Text(
                  'Enter price for make & hair for bride & 5 bridesmaid/siders',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(7.h),
                PackageTextformfield(
                  leadingImage: "₹",
                  // hintText: "Enter price of package",
                ),
                sizedBoxHeight(20.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 22.h,
                      child: Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side:
                            BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                        activeColor: const Color(0xffEF2B7B),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          // side: BorderSide(color: Color(0xffEF2B7B))
                        ),
                        value: packagecheck7visible,
                        onChanged: (value) {
                          setState(() {
                            packagecheck7visible = value!;
                            packag1visible = !packag1visible;
                            pacakge2visible = !pacakge2visible;
                            pacakge3visible = !pacakge3visible;
                            customvisible = !customvisible;
                            package5visible = !package5visible;
                            package6visible = !package6visible;

                            package7visible = true;
                          });
                        },
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Make this package as recommended pacakge',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxHeight(29.h),
              ],
            ),

            sizedBoxHeight(153.h),
            CustomButton(
                text: "Next",
                onTap: () {
                  Get.toNamed('/makeupbookingpage');
                }),
            sizedBoxHeight(30.h),
          ],
        ),
      )),
    );
  }
}

class PackageTextformfield extends StatelessWidget {
  PackageTextformfield(
      {super.key,
      this.hintText,
      this.leadingImage,
      this.trailingImage,
      this.usingPng});

  String? leadingImage;
  String? trailingImage;
  String? hintText;
  bool? usingPng;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 50.h,
      decoration: ShapeDecoration(
        color: Color(0xFFFEF3F8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        // shadows: [
        //   BoxShadow(
        //     color: Color(0xFFFFC1DD),
        //     blurRadius: 0,
        //     offset: Offset(1, 2),
        //     spreadRadius: 0,
        //   )
        // ],
      ),
      // decoration: ShapeDecoration(
      //   color: Color(0xFFFEF3F8),
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      // ),
      child: Row(
        children: [
          Container(
            width: 45.w,
            height: 55.h,
            decoration: ShapeDecoration(
              color: Color(0xFFEE3764),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, top: 12.h, bottom: 6.h),
              child: Text(
                leadingImage!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: TextStyle(
                fontFamily: 'AvenirNextCyr',
                fontSize: 16.sp,
                color: Colors.black,
              ),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  // prefixIcon: leadingImage != null
                  //     ? Padding(
                  //         padding: const EdgeInsets.only(
                  //             left: 16, right: 14, top: 15, bottom: 15),
                  //         child: usingPng ?? false
                  //             ? Image.asset(leadingImage!)
                  //             : SvgPicture.asset(
                  //                 leadingImage!, // Replace with your SVG icon path
                  //               ),
                  //       )
                  //     : null,
                  // Container(
                  //     width: 45.w,
                  //     // height: 45.h,
                  //     decoration: ShapeDecoration(
                  //       color: Color(0xFFEE3764),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.only(
                  //           topLeft: Radius.circular(5),
                  //           bottomLeft: Radius.circular(5),
                  //         ),
                  //       ),
                  //     ),
                  //     child:
                  //     usingPng ?? false
                  //         ? Padding(
                  //             padding: EdgeInsets.only(
                  //                 left: 16.w,
                  //                 right: 16.w,
                  //                 top: 12.h,
                  //                 bottom: 6.h),
                  //             child: Text(
                  //               leadingImage!,
                  //               style: TextStyle(
                  //                 color: Colors.white,
                  //                 fontSize: 18.sp,
                  //                 fontFamily: 'AvenirNextCyr',
                  //                 fontWeight: FontWeight.w700,
                  //               ),
                  //             ),
                  //           )
                  //         // Image.asset(leadingImage!)
                  //         : Padding(
                  //             padding: EdgeInsets.only(
                  //                 left: 16.w,
                  //                 right: 16.w,
                  //                 top: 12.h,
                  //                 bottom: 6.h),
                  //             child: Text(
                  //               leadingImage!,
                  //               style: TextStyle(
                  //                 color: Colors.white,
                  //                 fontSize: 18.sp,
                  //                 fontFamily: 'AvenirNextCyr',
                  //                 fontWeight: FontWeight.w700,
                  //               ),
                  //             ),
                  //           )
                  //     // SvgPicture.asset(
                  //     //     leadingImage!, // Replace with your SVG icon path
                  //     //   ),
                  //     )
                  // : null,
                  // suffixIcon: trailingImage != null
                  //     ? Padding(
                  //         padding: const EdgeInsets.only(
                  //             right: 19, top: 15, bottom: 15),
                  //         child: SvgPicture.asset(
                  //             trailingImage! // Replace with your SVG icon path
                  //             ),
                  //       )
                  //     : null,
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 9.w, top: 15.h, bottom: 15.h),
                  hintText: hintText,
                  hintStyle: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(
                          color: Color(0xFF9F9F9F),
                          fontWeight: FontWeight.w400)),
              keyboardType: TextInputType.number,
            ),
          ),
        ],
      ),
    );
  }
}
