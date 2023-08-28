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

class Banquethallpackagespage extends StatefulWidget {
  const Banquethallpackagespage({
    Key? key,
  }) : super(key: key);
  @override
  State<Banquethallpackagespage> createState() =>
      _BanquethallpackagespageState();
}

class _BanquethallpackagespageState extends State<Banquethallpackagespage> {
  // String pack1 = "package1";
  // String pack2 = "package2";
  // String pack3 = "package3";
  // String custom = "custom";

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
              'Banquet Hall',
              style: TextStyle(
                color: Color(0xFF373434),
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
                Text(
                  'Evening Reception Package',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 18.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(26.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hours',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        sizedBoxHeight(4.h),
                        SizedBox(
                          width: 154.w,
                          height: 35.h,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            readOnly: false,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            cursorColor: Colors.black,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              errorStyle: TextStyle(fontSize: 16.sp),
                              contentPadding: EdgeInsets.all(17.h),
                              filled: true,
                              fillColor: Color(0xffFEF3F8),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp),
                              hintText: "",
                              // helperText: "",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pax',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        sizedBoxHeight(4.h),
                        SizedBox(
                          width: 154.w,
                          height: 35.h,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            readOnly: false,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            cursorColor: Colors.black,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              errorStyle: TextStyle(fontSize: 16.sp),
                              contentPadding: EdgeInsets.all(17.h),
                              filled: true,
                              fillColor: Color(0xffFEF3F8),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp),
                              hintText: "",
                              // helperText: "",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                sizedBoxHeight(29.h),
                Text(
                  'Inclusions',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(8.h),
                Text(
                  '- Exclusive use of the banquet hall for an \n evening reception \n- Seating arrangements for guests\n- Reception Food Package: Appetizers,\n main course Buffet, and desserts\n- Beverage Service: Alcoholic and \n non-alcoholic drinks during the \n reception.',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
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
                            pacakge3visible = !pacakge3visible;
                            pacakge2visible = !pacakge2visible;
                            customvisible = !customvisible;
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
                Text(
                  'Half Day Package',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 18.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(26.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hours',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        sizedBoxHeight(4.h),
                        SizedBox(
                          width: 154.w,
                          height: 35.h,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            readOnly: false,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            cursorColor: Colors.black,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              errorStyle: TextStyle(fontSize: 16.sp),
                              contentPadding: EdgeInsets.all(17.h),
                              filled: true,
                              fillColor: Color(0xffFEF3F8),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp),
                              hintText: "",
                              // helperText: "",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pax',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        sizedBoxHeight(4.h),
                        SizedBox(
                          width: 154.w,
                          height: 35.h,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            readOnly: false,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            cursorColor: Colors.black,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              errorStyle: TextStyle(fontSize: 16.sp),
                              contentPadding: EdgeInsets.all(17.h),
                              filled: true,
                              fillColor: Color(0xffFEF3F8),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp),
                              hintText: "",
                              // helperText: "",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                sizedBoxHeight(29.h),
                Text(
                  'Inclusions',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(8.h),
                Text(
                  '- Exclusive use of the banquet hall for a \n half-day event (morning or evening)\n- Seating arrangements for guests\n- Meals: Brunch or dinner for the specified \n number of guests\n- Beverage Service: Non-alcoholic drinks \n during the event\n- On-site Venue Manager: Assistance with \n venue logistics and coordination during\n the event.',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
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
                            pacakge3visible = !pacakge3visible;
                            packag1visible = !packag1visible;
                            customvisible = !customvisible;
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

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Full Day Package',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 18.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(26.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Day',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        sizedBoxHeight(4.h),
                        SizedBox(
                          width: 154.w,
                          height: 35.h,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            readOnly: false,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            cursorColor: Colors.black,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              errorStyle: TextStyle(fontSize: 16.sp),
                              contentPadding: EdgeInsets.all(17.h),
                              filled: true,
                              fillColor: Color(0xffFEF3F8),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp),
                              hintText: "",
                              // helperText: "",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pax',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        sizedBoxHeight(4.h),
                        SizedBox(
                          width: 154.w,
                          height: 35.h,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            readOnly: false,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            cursorColor: Colors.black,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              errorStyle: TextStyle(fontSize: 16.sp),
                              contentPadding: EdgeInsets.all(17.h),
                              filled: true,
                              fillColor: Color(0xffFEF3F8),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffFEF3F8).withOpacity(0),
                                    width: 1),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp),
                              hintText: "",
                              // helperText: "",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                sizedBoxHeight(29.h),
                Text(
                  'Inclusions',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                sizedBoxHeight(8.h),
                Text(
                  '- Meals: Breakfast, lunch, and dinner for \n the specified number of guests\n- Beverage Service: Non-alcoholic drinks \n throughout the day\n- Dedicated Event Coordinator: Assistance \n with planning and coordination',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
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
                            pacakge2visible = !pacakge2visible;
                            packag1visible = !packag1visible;
                            customvisible = !customvisible;
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
                // FDottedLine(
                //   color: Color(0xFFEE3764),
                //   width: 380.0,
                //   strokeWidth: 1.0,
                //   dottedLength: 4.0,
                //   space: 2.0,
                // ),
                // sizedBoxHeight(29.h),
              ],
            ),
            sizedBoxHeight(153.h),
            CustomButton(
                text: "Next",
                onTap: () {
                  Get.toNamed('/venuebookingpage');
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
