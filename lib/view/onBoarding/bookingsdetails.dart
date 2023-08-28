import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_appbar.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/themedata.dart';
import 'package:wedzy/view/onBoarding/bookings.dart';

class Bookingsdetails extends StatefulWidget {
  const Bookingsdetails({super.key});

  @override
  State<Bookingsdetails> createState() => _BookingsdetailsState();
}

class _BookingsdetailsState extends State<Bookingsdetails> {

  @override
  Widget build(BuildContext context) {
    buildcontentcanceldialog(context) {
      return showDialog(
        context: context,
        builder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              insetPadding: EdgeInsets.symmetric(horizontal: 16),
              backgroundColor:
                  Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
              contentPadding: EdgeInsets.fromLTRB(32, 32, 36, 32),
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
                      'Are you sure you want cancel?',
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
                            height: 45.h,
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
                            height: 45.h,
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
                            height: 45.h,
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
                            height: 45.h,
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
        titleTxt: "Booking Details",
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
        child:
         Column(
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/orderimage1.png",
                              width: 45.w,
                              height: 45.h,
                            ),
                            sizedBoxWidth(11.w),
                            Text(
                              'Mokshada kesarkar',
                              textAlign: TextAlign.center,
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
                          padding: EdgeInsets.only(left: 6.w),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Ph no.',
                                  style: TextStyle(
                                    color: Color(0xFF373434),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: ' 7845124587',
                                  style: TextStyle(
                                    color: Color(0xFF373434),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        sizedBoxHeight(3.h),
                        Padding(
                          padding: EdgeInsets.only(left: 6.w),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Email:',
                                  style: TextStyle(
                                    color: Color(0xFF373434),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: ' mokshadakesarkar@gmail.com',
                                  style: TextStyle(
                                    color: Color(0xFF373434),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        sizedBoxHeight(15.h),
                        Padding(
                          padding: EdgeInsets.only(left: 6.w),
                          child: GestureDetector(
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/orderimage2.png",
                              width: 45.w,
                              height: 45.h,
                            ),
                            sizedBoxWidth(11.w),
                            Text(
                              'Afrid Mulla',
                              textAlign: TextAlign.center,
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
                          padding: EdgeInsets.only(left: 6.w),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Ph no.',
                                  style: TextStyle(
                                    color: Color(0xFF373434),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: ' 7845124587',
                                  style: TextStyle(
                                    color: Color(0xFF373434),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        sizedBoxHeight(3.h),
                        Padding(
                          padding: EdgeInsets.only(left: 6.w),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Email:',
                                  style: TextStyle(
                                    color: Color(0xFF373434),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: ' afridmulla@gmail.com',
                                  style: TextStyle(
                                    color: Color(0xFF373434),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        sizedBoxHeight(15.h),
                        Padding(
                          padding: EdgeInsets.only(left: 6.w),
                          child: GestureDetector(
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
              height: 230.h,
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
                        sizedBoxHeight(22.h),
                        Row(
                          children: [
                            Text(
                              '₹',
                              style: TextStyle(
                                color: Color(0xFFEE3764),
                                fontSize: 22.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            sizedBoxWidth(7.w),
                            Text(
                              '20,000',
                              style: TextStyle(
                                color: Color(0xFF373434),
                                fontSize: 18.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        sizedBoxHeight(12.h),
                        Row(
                          children: [
                            SvgPicture.asset("assets/images/group.svg"),
                            sizedBoxWidth(7.w),
                            Text(
                              '100-150 guests',
                              style: TextStyle(
                                color: Color(0xFF373434),
                                fontSize: 15.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        sizedBoxHeight(16.h),
                        Row(
                          children: [
                            SizedBox(
                              width: 71,
                              child: Text(
                                '1 Lead Bartenders',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF373434),
                                  fontSize: 12.sp,
                                  fontFamily: 'AvenirNextCyr',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            sizedBoxWidth(6.w),
                            SvgPicture.asset("assets/images/Ellipse 1290.svg"),
                            sizedBoxWidth(7.w),
                            SizedBox(
                              width: 70,
                              child: Text(
                                '2 Flair Bartenders',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF373434),
                                  fontSize: 12.sp,
                                  fontFamily: 'AvenirNextCyr',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            sizedBoxWidth(6.w),
                            SvgPicture.asset("assets/images/Ellipse 1290.svg"),
                            sizedBoxWidth(7.w),
                            SizedBox(
                              width: 50,
                              child: Text(
                                '3 Bar Rovers',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF373434),
                                  fontSize: 12.sp,
                                  fontFamily: 'AvenirNextCyr',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            sizedBoxWidth(6.w),
                            SvgPicture.asset("assets/images/Ellipse 1290.svg"),
                            sizedBoxWidth(7.w),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.h),
                              child: SizedBox(
                                width: 67,
                                child: Text(
                                  '2 Mixologist',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF373434),
                                    fontSize: 12.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            sizedBoxHeight(57.h),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Bookings(selectedPage: 1)));
                  },
                  child: Container(
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
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Confirm Request',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                sizedBoxWidth(20.w),
                InkWell(
                  onTap: () {
                    buildcontentcanceldialog(context);
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
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Cancel',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            sizedBoxHeight(20.h),
          ],
        ),
      )),
    );
  }
}
