import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_appbar.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/themedata.dart';

class Orderdetails extends StatefulWidget {
  const Orderdetails({super.key});

  @override
  State<Orderdetails> createState() => _OrderdetailsState();
}

class _OrderdetailsState extends State<Orderdetails> {
  bool order = false;

  @override
  Widget build(BuildContext context) {
    buildcontentmaildialog(context) {
      return showDialog(
        context: context,
        builder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              insetPadding: EdgeInsets.symmetric(horizontal: 16),
              backgroundColor:
                  Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
              //contentPadding: EdgeInsets.fromLTRB(96, 32, 96, 28),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(
                    color: Get.isDarkMode ? Colors.grey : Color(0XFFFFFFFF)),
              ),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //sizedBoxHeight(32.h),

                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Do you want to Mail \nMokshada ?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  sizedBoxHeight(21.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Container(
                            width: 117.w,
                            height: 36.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFEF2B7B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Yes',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      sizedBoxWidth(28.w),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 117.w,
                            height: 36.h,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFFEF2B7B)),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'No',
                                  style: TextStyle(
                                    color: Color(0xFFEF2B7B),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    buildcontentcalldialog(context) {
      return showDialog(
        context: context,
        builder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              insetPadding: EdgeInsets.symmetric(horizontal: 16),
              backgroundColor:
                  Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
              //contentPadding: EdgeInsets.fromLTRB(96, 32, 96, 28),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(
                    color: Get.isDarkMode ? Colors.grey : Color(0XFFFFFFFF)),
              ),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //sizedBoxHeight(32.h),

                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Do you want to Call \nMokshada ?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  sizedBoxHeight(21.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Container(
                            width: 117.w,
                            height: 36.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFEF2B7B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Yes',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      sizedBoxWidth(28.w),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 117.w,
                            height: 36.h,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFFEF2B7B)),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'No',
                                  style: TextStyle(
                                    color: Color(0xFFEF2B7B),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: "Orders Details",
        preferredSize: Size.fromHeight(50),
      ),
      // AppBar(
      //   backgroundColor: AppColors.white,
      //   title: customAppBar(text: "Orders Details"),
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      //   titleSpacing: 0,
      // ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            sizedBoxHeight(10.h),
            Container(
              alignment: Alignment.center,
              width: 328.w,
              height: 242.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3FA8A8A8),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0x68EE3764),
                        // borderRadius: BorderRadius.circular(10)
                        borderRadius: BorderRadius.only(
                            // topRight: Radius.circular(20),
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50))),
                    width: 3, // Adjust the width of the colored section
                    // color: Colors
                    //     .blue, // Replace with the desired color for the left side
                  ),
                  sizedBoxWidth(11.w),
                  Padding(
                    padding: EdgeInsets.only(top: 12.h, bottom: 18.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 171,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.h),
                            color: Color(0xFFFFE7F2),
                          ),
                          child: Center(
                              child: Text(
                            'Customer Details',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontFamily: 'AvenirNextCyr',
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                        sizedBoxHeight(13.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/orderimage1.png",
                              width: 45.w,
                              height: 45.h,
                            ),
                            sizedBoxWidth(11.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Mokshada kesarkar',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '9548745120',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF373434),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        sizedBoxHeight(11.h),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: ' Ph no. ',
                                style: TextStyle(
                                  color: Color(0xFF565656),
                                  fontSize: 15.sp,
                                  fontFamily: 'AvenirNextCyr',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: '7845124587',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontFamily: 'AvenirNextCyr',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        sizedBoxHeight(3.h),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: ' Email: ',
                                style: TextStyle(
                                  color: Color(0xFF565656),
                                  fontSize: 15.sp,
                                  fontFamily: 'AvenirNextCyr',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'mokshadakesarkar@gmail.com',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontFamily: 'AvenirNextCyr',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        sizedBoxHeight(15.h),
                        SizedBox(
                          width: 190.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  buildcontentcalldialog(context);
                                },
                                child: Container(
                                  width: 90.w,
                                  height: 30.h,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1.5, color: Color(0xFFEF2B7B)),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      sizedBoxWidth(20.w),
                                      SvgPicture.asset(
                                        "assets/images/phone-call.svg",
                                        width: 15.w,
                                        height: 15.h,
                                        // color: Color(0xffEF2B7B),
                                      ),
                                      sizedBoxWidth(7.w),
                                      Text(
                                        'Call',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFEF2B7B),
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  buildcontentmaildialog(context);
                                },
                                child: Container(
                                  width: 90.w,
                                  height: 30.h,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1.5, color: Color(0xFFEF2B7B)),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      sizedBoxWidth(20.w),
                                      SvgPicture.asset(
                                        "assets/images/mail.svg",
                                        width: 15.w,
                                        height: 15.h,
                                        // color: Color(0xffEF2B7B),
                                      ),
                                      sizedBoxWidth(7.w),
                                      Text(
                                        'Email',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFEF2B7B),
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            sizedBoxHeight(16.w),
            Container(
              alignment: Alignment.center,
              width: 328.w,
              height: 242.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3FA8A8A8),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0x68EE3764),
                        // borderRadius: BorderRadius.circular(10)
                        borderRadius: BorderRadius.only(
                            // topRight: Radius.circular(20),
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50))),
                    width: 3, // Adjust the width of the colored section
                    // color: Colors
                    //     .blue, // Replace with the desired color for the left side
                  ),
                  sizedBoxWidth(11.w),
                  Padding(
                    padding: EdgeInsets.only(top: 12.h, bottom: 18.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 171,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.h),
                            color: Color(0xFFFFE7F2),
                          ),
                          child: Center(
                              child: Text(
                            'Captain Details',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontFamily: 'AvenirNextCyr',
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                        sizedBoxHeight(13.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/orderimage2.png",
                              width: 45.w,
                              height: 45.h,
                            ),
                            sizedBoxWidth(11.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Afrid Mulla',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '9548745120',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF373434),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        sizedBoxHeight(11.h),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: ' Ph no. ',
                                style: TextStyle(
                                  color: Color(0xFF565656),
                                  fontSize: 15.sp,
                                  fontFamily: 'AvenirNextCyr',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: '7845124587',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontFamily: 'AvenirNextCyr',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        sizedBoxHeight(3.h),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: ' Email: ',
                                style: TextStyle(
                                  color: Color(0xFF565656),
                                  fontSize: 15.sp,
                                  fontFamily: 'AvenirNextCyr',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'afridmulla@gmail.com',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontFamily: 'AvenirNextCyr',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        sizedBoxHeight(15.h),
                        SizedBox(
                          width: 190.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  buildcontentcalldialog(context);
                                },
                                child: Container(
                                  width: 90.w,
                                  height: 30.h,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1.5, color: Color(0xFFEF2B7B)),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      sizedBoxWidth(20.w),
                                      SvgPicture.asset(
                                        "assets/images/phone-call.svg",
                                        width: 15.w,
                                        height: 15.h,
                                        // color: Color(0xffEF2B7B),
                                      ),
                                      sizedBoxWidth(7.w),
                                      Text(
                                        'Call',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFEF2B7B),
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  buildcontentmaildialog(context);
                                },
                                child: Container(
                                  width: 90.w,
                                  height: 30.h,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1.5, color: Color(0xFFEF2B7B)),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      sizedBoxWidth(20.w),
                                      SvgPicture.asset(
                                        "assets/images/mail.svg",
                                        width: 15.w,
                                        height: 15.h,
                                        // color: Color(0xffEF2B7B),
                                      ),
                                      sizedBoxWidth(7.w),
                                      Text(
                                        'Email',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFEF2B7B),
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            sizedBoxHeight(16.h),
            Container(
              alignment: Alignment.center,
              width: 328.w,
              height: 595.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3FA8A8A8),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0x68EE3764),
                            // borderRadius: BorderRadius.circular(10)
                            borderRadius: BorderRadius.only(
                                // topRight: Radius.circular(20),
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(50))),
                        width: 3, // Adjust the width of the colored section
                        // color: Colors
                        //     .blue, // Replace with the desired color for the left side
                      ),
                    ],
                  ),
                  sizedBoxWidth(11.w),
                  Padding(
                    padding: EdgeInsets.only(top: 12.h, bottom: 18.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 171,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.h),
                            color: Color(0xFFFFE7F2),
                          ),
                          child: Center(
                              child: Text(
                            'Pricing Details',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontFamily: 'AvenirNextCyr',
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                        sizedBoxHeight(13.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ' Actual Price',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF373434),
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            sizedBoxWidth(165.w),
                            Text(
                              '₹ 1200',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        sizedBoxHeight(29.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ' Discounted price',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF373434),
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            sizedBoxWidth(140.w),
                            Text(
                              '₹ 120',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        sizedBoxHeight(22.h),
                        FDottedLine(
                          color: Color(0xFFEE3764),
                          width: 352.0,
                          strokeWidth: 1.0,
                          dottedLength: 4.0,
                          space: 2.0,
                        ),
                        sizedBoxHeight(7.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ' Final price',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF373434),
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            sizedBoxWidth(175.w),
                            Text(
                              '₹ 1080',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        sizedBoxHeight(52.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ' Product Amount(1 Item)',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF373434),
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            sizedBoxWidth(80.w),
                            Text(
                              '₹ 1080',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        sizedBoxHeight(29.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ' Shipping Amount',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF373434),
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            sizedBoxWidth(143.w),
                            Text(
                              '₹ 50',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        sizedBoxHeight(21.h),
                        FDottedLine(
                          color: Color(0xFFEE3764),
                          width: 352.0,
                          strokeWidth: 1.0,
                          dottedLength: 4.0,
                          space: 2.0,
                        ),
                        sizedBoxHeight(14.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Order Amount',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF373434),
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            sizedBoxWidth(149.w),
                            Text(
                              '₹ 1130',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        sizedBoxHeight(29.h),
                        Container(
                          width: 307.w,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.25.w,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFEE3764),
                              ),
                            ),
                          ),
                        ),
                        sizedBoxHeight(14.h),
                        Text(
                          'Payment Gateway',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        sizedBoxHeight(7.h),
                        Text(
                          'UPI',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        sizedBoxHeight(12.h),
                        Text(
                          'Transaction ID',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        sizedBoxHeight(7.h),
                        Text(
                          '6Tgf457514',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            sizedBoxHeight(25.h),
            Container(
              alignment: Alignment.center,
              width: 328.w,
              height: 803.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3FA8A8A8),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0x68EE3764),
                        // borderRadius: BorderRadius.circular(10)
                        borderRadius: BorderRadius.only(
                            // topRight: Radius.circular(20),
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50))),
                    width: 3, // Adjust the width of the colored section
                    // color: Colors
                    //     .blue, // Replace with the desired color for the left side
                  ),
                  sizedBoxWidth(11.w),
                  Padding(
                    padding: EdgeInsets.only(top: 12.h, bottom: 18.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 171,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.h),
                            color: Color(0xFFFFE7F2),
                          ),
                          child: Center(
                              child: Text(
                            'Pricing Details',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontFamily: 'AvenirNextCyr',
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                        sizedBoxHeight(13.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/orderimage3.png",
                              width: 116.w,
                              height: 105.h,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: ' Product: ',
                                        style: TextStyle(
                                          color: Color(0xFF565656),
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Necklace',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                sizedBoxHeight(10.h),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: ' Order ID: ',
                                        style: TextStyle(
                                          color: Color(0xFF565656),
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '#1023566',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                sizedBoxHeight(10.h),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: ' Order Date: ',
                                        style: TextStyle(
                                          color: Color(0xFF565656),
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '05 MAy 2023',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                          ],
                        ),
                        sizedBoxHeight(27.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(" "),
                            SvgPicture.asset("assets/images/location.svg"),
                            sizedBoxWidth(7.w),
                            Text(
                              'Delivered at 14 june 3.40 am',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF373434),
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        sizedBoxHeight(8.h),
                        Text(
                          ' Mokshada kesarkar\n B-129 chawre avenue \n station road, malad west mumbai',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        sizedBoxHeight(13.h),
                        Text(
                          ' Delivery Type',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        sizedBoxHeight(3.h),
                        Text(
                          ' Express Delivery',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        sizedBoxHeight(19.h),
                        Text(
                          ' Type of request',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        sizedBoxHeight(3.h),
                        Text(
                          ' Cancellation',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        sizedBoxHeight(19.h),
                        // Text(
                        //   ' Extension Period',
                        //   textAlign: TextAlign.center,
                        //   style: TextStyle(
                        //     color: Color(0xFF373434),
                        //     fontSize: 15.sp,
                        //     fontFamily: 'AvenirNextCyr',
                        //     fontWeight: FontWeight.w700,
                        //   ),
                        // ),
                        // sizedBoxHeight(2.h),
                        // Text(
                        //   ' +2 days',
                        //   style: TextStyle(
                        //     color: Colors.black,
                        //     fontSize: 15.sp,
                        //     fontFamily: 'AvenirNextCyr',
                        //     fontWeight: FontWeight.w400,
                        //   ),
                        // ),
                        // sizedBoxHeight(18.h),
                        Text(
                          ' Request Person',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        sizedBoxHeight(3.h),
                        Text(
                          ' Akansksha Surve',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        sizedBoxHeight(18.h),
                        Text(
                          'Return Instructions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 18.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        sizedBoxHeight(3.h),
                        Container(
                          width: 351,
                          height: 144,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFEF3F8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            shadows: [
                              BoxShadow(
                                color: Color(0xFFFFC1DD),
                                blurRadius: 0,
                                offset: Offset(1, 2),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            sizedBoxHeight(13.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    side: BorderSide(color: Color(0xffEF2B7B), width: 1.5.w),
                    activeColor: const Color(0xffEF2B7B),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      // side: BorderSide(color: Color(0xffEF2B7B))
                    ),
                    value: order,
                    onChanged: (value) {
                      setState(() {
                        order = value ?? false;
                      });
                    }),
                Flexible(
                  child: Text('Set as default instructions',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ],
            ),
            sizedBoxHeight(27.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 154.w,
                  height: 50.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFEF2B7B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Issue Request',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: 154.w,
                    height: 50.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.25, color: Color(0xFFEF2B7B)),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Cancel',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFEE3764),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxHeight(41.h),
          ],
        ),
      )),
    );
  }
}
