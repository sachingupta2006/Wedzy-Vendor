import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/appbarservices.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/themedata.dart';

class Packagespage extends StatefulWidget {
  const Packagespage({
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
  State<Packagespage> createState() => _PackagespageState();
}

class _PackagespageState extends State<Packagespage> {
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

  bool packagcheck1visible = false;
  bool pacakgecheck2visible = false;
  bool pacakgecheck3visible = false;
  bool customcheckvisible = false;

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
              'Bartender',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w700,
              ),
            ),
            sizedBoxHeight(15.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // sizedBoxHeight(15.h),
                Row(
                  children: [
                    Text(
                      'Package Type 1',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    sizedBoxWidth(49.w),
                    Text(
                      'Guests -',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    sizedBoxWidth(5.w),
                    Container(
                      width: 88.w,
                      height: 32.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1.5, color: Color(0xFFEE3764)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.w, right: 8.w, top: 5.h, bottom: 3.h),
                        child: Text(
                          '100-150 ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(26.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Line 124.svg",
                      width: 8.w,
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Lead/ Head Bartender',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter > widget.minValue) {
                                    counter--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter < widget.maxValue) {
                                    counter++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(22.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Line 124.svg",
                      width: 8.w,
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Flair Bartender',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter1 > widget.minValue1) {
                                    counter1--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter1",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter1 < widget.maxValue1) {
                                    counter1++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(22.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Line 124.svg",
                      width: 8.w,
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Bar Rover',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter2 > widget.minValue2) {
                                    counter2--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter2",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter2 < widget.maxValue2) {
                                    counter2++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(22.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Line 124.svg",
                      width: 8.w,
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Mixologist',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter3 > widget.minValue3) {
                                    counter3--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter3",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter3 < widget.maxValue3) {
                                    counter3++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(30.h),
                Text(
                  'Price of the package',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(10.h),
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
                            packag1visible = true;
                          });
                        },
                      ),
                    ),

                    // SizedBox(
                    //   width: 24.w,
                    //   height: 23.h,
                    //   child: Transform.scale(
                    //     scale: 1.2,
                    //     child: Radio<String>(
                    //       value: 'male',
                    //       groupValue: pack1,
                    //       fillColor: MaterialStateColor.resolveWith(
                    //           (states) => AppColors.buttoncolour),
                    //       onChanged: (value) {
                    //         setState(() {
                    //           pacakge2visible = false;
                    //           pacakge3visible = false;
                    //           customvisible = false;
                    //           packag1visible = true;
                    //           pack1 = value!;
                    //         });
                    //       },
                    //     ),
                    //   ),
                    // ),
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
                Row(
                  children: [
                    Text(
                      'Package Type 2',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    sizedBoxWidth(49.w),
                    Text(
                      'Guests -',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    sizedBoxWidth(5.w),
                    Container(
                      width: 88.w,
                      height: 32.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1.5, color: Color(0xFFEE3764)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.w, right: 8.w, top: 5.h, bottom: 3.h),
                        child: Text(
                          '200-450',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(26.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Line 124.svg",
                      width: 8.w,
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Lead/ Head Bartender',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter4 > widget.minValue4) {
                                    counter4--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter4",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter4 < widget.maxValue4) {
                                    counter4++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(22.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Line 124.svg",
                      width: 8.w,
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Flair Bartender',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter5 > widget.minValue5) {
                                    counter5--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter5",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter5 < widget.maxValue5) {
                                    counter5++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(22.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Line 124.svg",
                      width: 8.w,
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Bar Rover',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter6 > widget.minValue6) {
                                    counter6--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter6",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter6 < widget.maxValue6) {
                                    counter6++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(22.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Line 124.svg",
                      width: 8.w,
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Mixologist',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter7 > widget.minValue7) {
                                    counter7--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter7",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter7 < widget.maxValue7) {
                                    counter7++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(30.h),
                Text(
                  'Price of the package',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(10.h),
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
                            // pacakge3visible = !pacakge3visible;
                            // packag1visible = !packag1visible;
                            // customvisible = !customvisible;
                            pacakge2visible = true;
                          });
                        },
                      ),
                    ),

                    // SizedBox(
                    //   width: 24.w,
                    //   height: 23.h,
                    //   child: Transform.scale(
                    //     scale: 1.2,
                    //     child: Radio<String>(
                    //       value: 'male',
                    //       groupValue: pack2,
                    //       fillColor: MaterialStateColor.resolveWith(
                    //           (states) => AppColors.buttoncolour),
                    //       onChanged: (value) {
                    //         setState(() {
                    //           packag1visible = false;
                    //           pacakge2visible = true;
                    //           pacakge3visible = false;
                    //           customvisible = false;
                    //           pack2 = value!;
                    //         });
                    //       },
                    //     ),
                    //   ),
                    // ),
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
                Row(
                  children: [
                    Text(
                      'Package Type 3',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    sizedBoxWidth(49.w),
                    Text(
                      'Guests -',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    sizedBoxWidth(5.w),
                    Container(
                      width: 88.w,
                      height: 32.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1.5, color: Color(0xFFEE3764)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 8.w, right: 8.w, top: 5.h, bottom: 3.h),
                        child: Text(
                          '500-1000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(26.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Line 124.svg",
                      width: 8.w,
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Lead/ Head Bartender',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter8 > widget.minValue8) {
                                    counter8--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter8",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter8 < widget.maxValue8) {
                                    counter8++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(22.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Line 124.svg",
                      width: 8.w,
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Flair Bartender',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter9 > widget.minValue9) {
                                    counter9--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter9",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter9 < widget.maxValue9) {
                                    counter9++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(22.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Line 124.svg",
                      width: 8.w,
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Bar Rover',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter10 > widget.minValue10) {
                                    counter10--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter10",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter10 < widget.maxValue10) {
                                    counter10++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(22.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Line 124.svg",
                      width: 8.w,
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Mixologist',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter11 > widget.minValue11) {
                                    counter11--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter11",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter11 < widget.maxValue11) {
                                    counter11++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(30.h),
                Text(
                  'Price of the package',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(10.h),
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
                            // pacakge2visible = !pacakge2visible;
                            // packag1visible = !packag1visible;
                            // customvisible = !customvisible;
                            pacakge3visible = true;
                          });
                        },
                      ),
                    ),

                    // SizedBox(
                    //   width: 24.w,
                    //   height: 23.h,
                    //   child: Transform.scale(
                    //     scale: 1.2,
                    //     child: Radio<String>(
                    //       value: 'male',
                    //       groupValue: pack3,
                    //       fillColor: MaterialStateColor.resolveWith(
                    //           (states) => AppColors.buttoncolour),
                    //       onChanged: (value) {
                    //         setState(() {
                    //           pacakge2visible = false;
                    //           packag1visible = false;
                    //           pacakge3visible = true;
                    //           customvisible = false;
                    //           pack3 = value!;
                    //         });
                    //       },
                    //     ),
                    //   ),
                    // ),
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
                Row(
                  children: [
                    Text(
                      'Custom Package',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    sizedBoxWidth(41.w),
                    Text(
                      'Guests -',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    sizedBoxWidth(4.w),
                    SizedBox(
                      width: 88.w,
                      // height: 32.h,
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                        cursorColor: const Color(0xFF3B3F43),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Color(0xFFEE3764),
                                width: 1.5,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Color(0xFFEE3764),
                                width: 1.5,
                              )),
                          errorStyle: TextStyle(fontSize: 14.sp),
                          isCollapsed: true,
                          suffixIconConstraints: const BoxConstraints(),
                          contentPadding: EdgeInsets.only(
                            left: 7.w,
                            top: 2.h,
                            bottom: 2.h,
                            // right: 17.w,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                              color: const Color(0xFF4D4D4D),
                              fontSize: 18.sp,
                              fontFamily: "Poppins"),
                          hintText: "",
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return;
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                sizedBoxHeight(26.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 19.w,
                      height: 21.h,
                      child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          side: BorderSide(
                              color: Color(0xffEF2B7B), width: 1.5.w),
                          activeColor: const Color(0xffEF2B7B),
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            // side: BorderSide(color: Color(0xffEF2B7B))
                          ),
                          value: lead,
                          onChanged: (value) {
                            setState(() {
                              lead = value ?? false;
                            });
                          }),
                    ),
                    sizedBoxWidth(9.w),
                    Flexible(
                      child: Text(
                        'Lead/ Head Bartender',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 32.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter8 > widget.minValue8) {
                                    counter8--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter8",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter8 < widget.maxValue8) {
                                    counter8++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(22.h),
                Row(
                  children: [
                    SizedBox(
                      width: 19.w,
                      height: 21.h,
                      child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          side: BorderSide(
                              color: Color(0xffEF2B7B), width: 1.5.w),
                          activeColor: const Color(0xffEF2B7B),
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            // side: BorderSide(color: Color(0xffEF2B7B))
                          ),
                          value: flair,
                          onChanged: (value) {
                            setState(() {
                              flair = value ?? false;
                            });
                          }),
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Flair Bartender',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 32.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter9 > widget.minValue9) {
                                    counter9--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter9",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter9 < widget.maxValue9) {
                                    counter9++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(22.h),
                Row(
                  children: [
                    SizedBox(
                      width: 19.w,
                      height: 21.h,
                      child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          side: BorderSide(
                              color: Color(0xffEF2B7B), width: 1.5.w),
                          activeColor: const Color(0xffEF2B7B),
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            // side: BorderSide(color: Color(0xffEF2B7B))
                          ),
                          value: bar,
                          onChanged: (value) {
                            setState(() {
                              bar = value ?? false;
                            });
                          }),
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Bar Rover',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 32.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter10 > widget.minValue10) {
                                    counter10--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter10",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter10 < widget.maxValue10) {
                                    counter10++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(22.h),
                Row(
                  children: [
                    SizedBox(
                      width: 19.w,
                      height: 21.h,
                      child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          side: BorderSide(
                              color: Color(0xffEF2B7B), width: 1.5.w),
                          activeColor: const Color(0xffEF2B7B),
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            // side: BorderSide(color: Color(0xffEF2B7B))
                          ),
                          value: mixo,
                          onChanged: (value) {
                            setState(() {
                              mixo = value ?? false;
                            });
                          }),
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Mixologist',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 32.w),
                  child: Row(
                    children: [
                      Text(
                        'Add members',
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 12.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      sizedBoxWidth(9.w),
                      Container(
                        // width: 121.w,
                        // height: 32.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.15, color: Color(0xFFDFDFDF)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F939393),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter11 > widget.minValue11) {
                                    counter11--;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/minus.svg",
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(22.w),
                            SizedBox(
                              width: 16.w,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "$counter11",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(20.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter11 < widget.maxValue11) {
                                    counter11++;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Container(
                                  width: 33,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEF2B7B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/pluswhite.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(30.h),
                Text(
                  'Price of the package',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(10.h),
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
                            // packag1visible = !packag1visible;
                            // pacakge2visible = !pacakge2visible;
                            // pacakge3visible = !pacakge3visible;
                            customvisible = true;
                          });
                        },
                      ),
                    ),
                    // SizedBox(
                    //   width: 24.w,
                    //   height: 23.h,
                    //   child: Transform.scale(
                    //     scale: 1.2,
                    //     child: Radio<String>(
                    //       value: 'male',
                    //       groupValue: custom,
                    //       fillColor: MaterialStateColor.resolveWith(
                    //           (states) => AppColors.buttoncolour),
                    //       onChanged: (value) {
                    //         setState(() {
                    //           custom = value!;
                    //           packag1visible = false;
                    //           pacakge2visible = false;
                    //           pacakge3visible = false;
                    //           customvisible = true;
                    //         });
                    //       },
                    //     ),
                    //   ),
                    // ),
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
              ],
            ),
            sizedBoxHeight(153.h),
            CustomButton(
                text: "Next",
                onTap: () {
                  Get.toNamed('/bookingspage');
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
