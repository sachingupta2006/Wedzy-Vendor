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

class CakePackagespage extends StatefulWidget {
  const CakePackagespage({
    Key? key,
  }) : super(key: key);
  @override
  State<CakePackagespage> createState() => _CakePackagespageState();
}

class _CakePackagespageState extends State<CakePackagespage> {
  bool jar = false;
  bool cream = false;
  bool wedding = false;
  bool multiple = false;
  bool cupcake = false;
  bool chandelier = false;
  bool redvelvet = false;
  bool whitecake = false;
  bool strawberry = false;
  bool chocolate = false;
  bool carrot = false;
  bool fruit = false;
  bool rainbow = false;
  bool funfetti = false;
  bool lemon = false;
  bool twotier = false;
  bool threetier = false;
  bool fourtier = false;
  bool fivetier = false;
  bool all = false;

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
              'Cakes',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 18.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w700,
              ),
            ),
            sizedBoxHeight(8.h),
            Text(
              'What is you standard Rate for standard\ncake (1kg)?',
              style: TextStyle(
                color: Color(0xFF373434),
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
            Text(
              'What do you specialize in?',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: jar,
                      onChanged: (value) {
                        setState(() {
                          jar = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Cake in a jar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: cream,
                      onChanged: (value) {
                        setState(() {
                          cream = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Ice cream cakes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: wedding,
                      onChanged: (value) {
                        setState(() {
                          wedding = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Wedding cakes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: multiple,
                      onChanged: (value) {
                        setState(() {
                          multiple = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Multiple tier cake',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: cupcake,
                      onChanged: (value) {
                        setState(() {
                          cupcake = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Cupcake',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: chandelier,
                      onChanged: (value) {
                        setState(() {
                          chandelier = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Chandelier cakes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(36.h),
            Text(
              'Select the flavours that you can create',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: redvelvet,
                      onChanged: (value) {
                        setState(() {
                          redvelvet = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Red velvet cake',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: whitecake,
                      onChanged: (value) {
                        setState(() {
                          whitecake = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'White cake & vanilla',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: strawberry,
                      onChanged: (value) {
                        setState(() {
                          strawberry = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Strawberry & angel food cake',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: chocolate,
                      onChanged: (value) {
                        setState(() {
                          chocolate = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Chocolate cake',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: carrot,
                      onChanged: (value) {
                        setState(() {
                          carrot = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Carrot cake',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: fruit,
                      onChanged: (value) {
                        setState(() {
                          fruit = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Fruit cakes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: rainbow,
                      onChanged: (value) {
                        setState(() {
                          rainbow = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Rainbow cakes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: funfetti,
                      onChanged: (value) {
                        setState(() {
                          funfetti = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Funfetti cakes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: lemon,
                      onChanged: (value) {
                        setState(() {
                          lemon = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Lemon cakes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(36.h),
            Text(
              'Which of the following tiers can you create \nwhen making a wedding cake?',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: twotier,
                      onChanged: (value) {
                        setState(() {
                          twotier = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Two-Tier Cake',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: threetier,
                      onChanged: (value) {
                        setState(() {
                          threetier = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Three-Tier Cake',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: fourtier,
                      onChanged: (value) {
                        setState(() {
                          fourtier = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Four-Tier Cake',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: fivetier,
                      onChanged: (value) {
                        setState(() {
                          fivetier = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Five-Tier Cake',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(23.h),
            Row(
              children: [
                SizedBox(
                  width: 19.w,
                  height: 21.h,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                      activeColor: const Color(0xffEF2B7B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        // side: BorderSide(color: Color(0xffEF2B7B))
                      ),
                      value: all,
                      onChanged: (value) {
                        setState(() {
                          all = value ?? false;
                          twotier = !twotier;
                          threetier = !threetier;
                          fourtier = !fourtier;
                          fivetier = !fivetier;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'All of the above',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            sizedBoxHeight(36.h),
            Text(
              'What is your speciality or signature style in\n cake making? ',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(10.h),
            TextFormField(
              style: TextStyle(fontSize: 16.sp),
              cursorColor: const Color(0xFF3B3F43),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                errorStyle: TextStyle(fontSize: 16.sp),
                contentPadding: EdgeInsets.all(17.h),
                filled: true,
                fillColor: Color(0xFFFEF3F8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                      color: Color(0xFFFEF3F8).withOpacity(0), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                      color: Color(0xFFFEF3F8).withOpacity(0), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                      color: Color(0xFFFEF3F8).withOpacity(0), width: 1),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.red, width: 1),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.red, width: 1),
                ),
                hintStyle:
                    TextStyle(color: const Color(0xFF4D4D4D), fontSize: 16.sp),
                hintText: " Write your speciality",
              ),
              minLines: 4,
              maxLines: null,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Speciality is required';
                }
                return null;
              },
            ),
            sizedBoxHeight(46.h),
            CustomButton(
                text: "Next",
                onTap: () {
                  Get.toNamed('/cakebooking');
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
      ),
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
