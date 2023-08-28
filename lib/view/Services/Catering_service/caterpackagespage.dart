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

class Caterpackagespage extends StatefulWidget {
  const Caterpackagespage({
    Key? key,
  }) : super(key: key);
  @override
  State<Caterpackagespage> createState() => _CaterpackagespageState();
}

class _CaterpackagespageState extends State<Caterpackagespage> {
  bool chaat = false;
  bool live = false;
  bool cuisine = false;
  bool international = false;
  bool general = false;
  bool premium = false;
  bool jain = false;
  bool vegetarian = false;
  bool street = false;
  bool drinks = false;
  bool any = false;
  bool other = false;

  bool packag1visible = true;
  bool pacakge2visible = true;
  bool lessthanvisible = true;
  bool fiftytohundvisible = true;
  bool hundtotwohundvisible = true;
  bool twohundtofivehundvisible = true;
  bool morevisible = true;

  bool packagcheck1visible = false;
  bool pacakgecheck2visible = false;
  bool lessthancheck = false;
  bool fiftytohundcheck = false;
  bool hundtotwocheck = false;
  bool twohundtofivecheck = false;
  bool morecheck = false;

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
              'Catering',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 18.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w700,
              ),
            ),
            sizedBoxHeight(12.h),
            Text(
              '1. What is your business category?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(16.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24.w,
                  height: 22.h,
                  child: Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                    activeColor: const Color(0xffEF2B7B),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      // side: BorderSide(color: Color(0xffEF2B7B))
                    ),
                    value: packagcheck1visible,
                    onChanged: (value) {
                      setState(() {
                        packagcheck1visible = value!;
                        pacakge2visible = !pacakge2visible;
                        packag1visible = true;
                      });
                    },
                  ),
                ),
                Flexible(
                  child: Text(
                    'Normal Catering',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 15.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxHeight(15.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24.w,
                  height: 22.h,
                  child: Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                    activeColor: const Color(0xffEF2B7B),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      // side: BorderSide(color: Color(0xffEF2B7B))
                    ),
                    value: pacakgecheck2visible,
                    onChanged: (value) {
                      setState(() {
                        pacakgecheck2visible = value!;
                        packag1visible = !packag1visible;
                        pacakge2visible = true;
                      });
                    },
                  ),
                ),
                Flexible(
                  child: Text(
                    'Premium Gourmet Catering',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 15.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxHeight(27.h),
            Text(
              '2. Select the Type of caterer you are',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(22.h),
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
                      value: chaat,
                      onChanged: (value) {
                        setState(() {
                          chaat = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Chaat provider only',
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
            sizedBoxHeight(22.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      value: live,
                      onChanged: (value) {
                        setState(() {
                          live = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Specialized live counter items only (e.g.,\nice creams, drinks, desserts, etc.)',
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
            sizedBoxHeight(22.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
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
                      value: cuisine,
                      onChanged: (value) {
                        setState(() {
                          cuisine = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Specialized in only one type of cuisine\n (e.g.,Italian only, Thai only)',
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
            sizedBoxHeight(22.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      value: international,
                      onChanged: (value) {
                        setState(() {
                          international = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Available with International Premium \nCuisines',
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
            sizedBoxHeight(22.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      value: general,
                      onChanged: (value) {
                        setState(() {
                          general = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'General caterer providing Basic Catering \nservices with Indian cuisine & basic \ncounters',
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
            sizedBoxHeight(22.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      value: premium,
                      onChanged: (value) {
                        setState(() {
                          premium = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  '''Premium Gourmet Caterer With \nInternational cuisines & exclusive \ndecorative counters.''',
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
            sizedBoxHeight(25.h),
            Text(
              '3. Do you fall into any of the following\n    categories?',
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
                      value: jain,
                      onChanged: (value) {
                        setState(() {
                          jain = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Jain catering only',
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
            sizedBoxHeight(22.h),
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
                      value: vegetarian,
                      onChanged: (value) {
                        setState(() {
                          vegetarian = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Vegetarian only',
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
            sizedBoxHeight(22.h),
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
                      value: street,
                      onChanged: (value) {
                        setState(() {
                          street = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Chaat and street food only',
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
            sizedBoxHeight(22.h),
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
                      value: drinks,
                      onChanged: (value) {
                        setState(() {
                          drinks = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Drinks only',
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
            sizedBoxHeight(22.h),
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
                      value: any,
                      onChanged: (value) {
                        setState(() {
                          any = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Does no fall in any category',
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
            sizedBoxHeight(22.h),
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
                      value: other,
                      onChanged: (value) {
                        setState(() {
                          other = value ?? false;
                        });
                      }),
                ),
                sizedBoxWidth(9.w),
                Text(
                  'Other',
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
            sizedBoxHeight(6.h),
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
                hintText: "",
              ),
              minLines: 4,
              maxLines: null,
              validator: (value) {
                if (value!.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
            sizedBoxHeight(25.h),
            Text(
              'What is the maximum number of people you can cater to?',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(16.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24.w,
                  height: 22.h,
                  child: Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                    activeColor: const Color(0xffEF2B7B),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      // side: BorderSide(color: Color(0xffEF2B7B))
                    ),
                    value: lessthancheck,
                    onChanged: (value) {
                      setState(() {
                        lessthancheck = value!;
                        fiftytohundvisible = !fiftytohundvisible;
                        hundtotwohundvisible = !hundtotwohundvisible;
                        twohundtofivehundvisible = !twohundtofivehundvisible;
                        morevisible = !morevisible;
                        lessthanvisible = true;
                      });
                    },
                  ),
                ),
                Flexible(
                    child: Text(
                  'less than 100',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ],
            ),
            sizedBoxHeight(15.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24.w,
                  height: 22.h,
                  child: Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                    activeColor: const Color(0xffEF2B7B),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      // side: BorderSide(color: Color(0xffEF2B7B))
                    ),
                    value: fiftytohundcheck,
                    onChanged: (value) {
                      setState(() {
                        fiftytohundcheck = value!;
                        lessthanvisible = !lessthanvisible;
                        hundtotwohundvisible = !hundtotwohundvisible;
                        twohundtofivehundvisible = !twohundtofivehundvisible;
                        morevisible = !morevisible;
                        fiftytohundvisible = true;
                      });
                    },
                  ),
                ),
                Flexible(
                    child: Text(
                  '100-500',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ],
            ),
            sizedBoxHeight(15.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24.w,
                  height: 22.h,
                  child: Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                    activeColor: const Color(0xffEF2B7B),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      // side: BorderSide(color: Color(0xffEF2B7B))
                    ),
                    value: hundtotwocheck,
                    onChanged: (value) {
                      setState(() {
                        hundtotwocheck = value!;
                        lessthanvisible = !lessthanvisible;
                        fiftytohundvisible = !fiftytohundvisible;
                        twohundtofivehundvisible = !twohundtofivehundvisible;
                        morevisible = !morevisible;
                        hundtotwohundvisible = true;
                      });
                    },
                  ),
                ),
                Flexible(
                    child: Text(
                  '500-1000',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ],
            ),
            sizedBoxHeight(15.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24.w,
                  height: 22.h,
                  child: Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                    activeColor: const Color(0xffEF2B7B),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      // side: BorderSide(color: Color(0xffEF2B7B))
                    ),
                    value: twohundtofivecheck,
                    onChanged: (value) {
                      setState(() {
                        twohundtofivecheck = value!;
                        lessthanvisible = !lessthanvisible;
                        fiftytohundvisible = !fiftytohundvisible;
                        hundtotwohundvisible = !hundtotwohundvisible;
                        morevisible = !morevisible;
                        twohundtofivehundvisible = true;
                      });
                    },
                  ),
                ),
                Flexible(
                    child: Text(
                  '1000-2000',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ],
            ),
            sizedBoxHeight(15.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24.w,
                  height: 22.h,
                  child: Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                    activeColor: const Color(0xffEF2B7B),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      // side: BorderSide(color: Color(0xffEF2B7B))
                    ),
                    value: morecheck,
                    onChanged: (value) {
                      setState(() {
                        morecheck = value!;
                        lessthanvisible = !lessthanvisible;
                        fiftytohundvisible = !fiftytohundvisible;
                        hundtotwohundvisible = !hundtotwohundvisible;
                        twohundtofivehundvisible = !twohundtofivehundvisible;
                        morevisible = true;
                      });
                    },
                  ),
                ),
                Flexible(
                    child: Text(
                  'More than 2000',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ],
            ),
            sizedBoxHeight(99.h),
            CustomButton(
                text: "Next",
                onTap: () {
                  Get.toNamed('/caterbookingpage');
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
