import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:slider_button/slider_button.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/themedata.dart';

import '../../Utils/Common/sized_box.dart';
import '../../Utils/Common/texts.dart';

class Bookings extends StatelessWidget {
  final bool? backArrow;
  Bookings({Key? key, required this.selectedPage, this.backArrow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: selectedPage,
      child: Scaffold(
        appBar: CustomAppBarDynamic(
            backArrow: backArrow,
            titleTxt: "Bookings",
            preferredSize: const Size.fromHeight(100),
            useCustomWidget: true,
            customWidget: ButtonsTabBar(
              buttonMargin: EdgeInsets.symmetric(horizontal: 4.w),
              contentPadding: EdgeInsets.symmetric(horizontal: 30.w),
              radius: 25,
              backgroundColor: const Color(0xFFEF2B7B),
              unselectedBorderColor: const Color(0xFFEF2B7B),
              borderWidth: 1,
              borderColor: const Color(0xFFFFFFFF),
              unselectedBackgroundColor: const Color(0xFFFFFFFF),
              unselectedLabelStyle: const TextStyle(color: Color(0xFFEF2B7B)),
              labelStyle: TextStyle(
                color: const Color(0xFFFFFFFF),
                fontWeight: FontWeight.w700,
                fontSize: 15.sp,
              ),
              tabs: const [
                Tab(text: "Requests"),
                Tab(text: "Live"),
                Tab(text: "History"),
              ],
            )),
        body: TabBarView(children: [tab1(), tab2(), tab3()]),
      ),
    );
  }

  Widget tab1() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          request(),
        ],
      ),
    );
  }

  Widget tab2() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Live1(),
        ],
      ),
    );
  }

  Widget tab3() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [sizedBoxHeight(10.h), history(), sizedBoxHeight(100.h)],
        ),
      ),
    );
  }

  Widget request() {
    return Column(
      children: [
        sizedBoxHeight(17.h),
        Container(
          alignment: Alignment.center,
          width: 328.w,
          height: 255.h,
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
                      width: 205.w,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.h),
                        color: Color(0xFFFFE7F2),
                      ),
                      child: Center(
                          child: Text(
                        'Mon, Apr 14 2.30pm',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                    ),
                    sizedBoxHeight(18.h),
                    Text(
                      'Customer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF373434),
                        fontSize: 18.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    sizedBoxHeight(12.h),
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
                    sizedBoxHeight(8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/images/location.svg"),
                        sizedBoxWidth(3.w),
                        Text(
                          'Malad west, Mumbai',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    sizedBoxHeight(19.h),
                    InkWell(
                        onTap: () {
                          Get.toNamed('/bookingdetails');
                        },
                        child: textPrimary15w700('View Request')),
                    // Padding(
                    //   padding: EdgeInsets.only(left: 20.w),
                    //   child: SizedBox(
                    //       width: 256.w,
                    //       child: CustomButton(
                    //           text: "View Request",
                    //           onTap: () {
                    //             Get.toNamed('/bookingdetails');
                    //           })),
                    // ),
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
          height: 255.h,
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
                      width: 205.w,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.h),
                        color: Color(0xFFFFE7F2),
                      ),
                      child: Center(
                          child: Text(
                        'Mon, Apr 14 2.30pm',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                    ),
                    sizedBoxHeight(18.h),
                    Text(
                      'Customer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF373434),
                        fontSize: 18.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    sizedBoxHeight(12.h),
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
                              'Chaitali Tatkare',
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
                    sizedBoxHeight(8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/images/location.svg"),
                        sizedBoxWidth(3.w),
                        Text(
                          'Malad west, Mumbai',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    sizedBoxHeight(19.h),
                    InkWell(
                        onTap: () {
                          Get.toNamed('/bookingdetails');
                        },
                        child: textPrimary15w700('View Request')),
                    // Padding(
                    //   padding: EdgeInsets.only(left: 20.w),
                    //   child: SizedBox(
                    //       width: 256.w,
                    //       child:
                    //           CustomButton(text: "View Request", onTap: () {})),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
        sizedBoxHeight(16.h),
      ],
    );
  }

  Widget history() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sizedBoxHeight(17.h),
        Text(
          '19 July 11.30 PM',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF373434),
            fontSize: 15.sp,
            fontFamily: 'AvenirNextCyr',
            fontWeight: FontWeight.w500,
          ),
        ),
        sizedBoxHeight(13.h),
        Container(
          alignment: Alignment.center,
          width: 328.w,
          // height: 290.h,
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
          child: Padding(
            padding: EdgeInsets.only(top: 12.h, left: 12.w, bottom: 18.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customer details',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 16.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                sizedBoxHeight(16.h),
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
                sizedBoxHeight(17.h),
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
                sizedBoxHeight(4.h),
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
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                sizedBoxHeight(31.h),
                Padding(
                  padding: EdgeInsets.only(left: 6.w),
                  child: Text(
                    'Service details',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 16.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 6.w),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Service start date: ',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '12 July 2023',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 6.w),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Service end date: ',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '25 July 2023',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                sizedBoxHeight(14.h)
              ],
            ),
          ),
        ),
        sizedBoxHeight(16.h),
        Text(
          '15 July 12.30 PM',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF373434),
            fontSize: 15.sp,
            fontFamily: 'AvenirNextCyr',
            fontWeight: FontWeight.w500,
          ),
        ),
        sizedBoxHeight(13.h),
        Container(
          alignment: Alignment.center,
          width: 328.w,
          // height: 290.h,
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
          child: Padding(
            padding: EdgeInsets.only(top: 12.h, left: 12.w, bottom: 18.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customer details',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 16.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                sizedBoxHeight(16.h),
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
                sizedBoxHeight(17.h),
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
                sizedBoxHeight(4.h),
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
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                sizedBoxHeight(31.h),
                Padding(
                  padding: EdgeInsets.only(left: 6.w),
                  child: Text(
                    'Service details',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 16.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 6.w),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Service start date: ',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '12 July 2023',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                sizedBoxHeight(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 6.w),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Service end date: ',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '25 July 2023',
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                sizedBoxHeight(14.h)
              ],
            ),
          ),
        ),
      ],
    );
  }

  int selectedPage;
}

class Live1 extends StatefulWidget {
  const Live1({super.key});

  @override
  State<Live1> createState() => _Live1State();
}

class _Live1State extends State<Live1> {
  @override
  Widget build(BuildContext context) {
    var showdate = false.obs;

    TextEditingController livepinfield = TextEditingController();
    TextEditingController showdialogotp = TextEditingController();
    TextEditingController servicedialogotp = TextEditingController();

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

    buildcontentcalldialogcaptain(context) {
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
                      'Do you want to Call \nAfrid ?',
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

    buildcontentotpdialogservicebutton(context) {
      return showDialog(
        context: context,
        builder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              insetPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
              contentPadding: EdgeInsets.fromLTRB(24, 30, 24, 24),
              // insetPadding:
              //     EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
              backgroundColor:
                  Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
              // contentPadding: EdgeInsets.fromLTRB(20, 32, 20, 32),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(
                    color: Get.isDarkMode ? Colors.grey : Color(0XFFFFFFFF)),
              ),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //sizedBoxHeight(32.h),

                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Enter 4 digit OTP                       ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF373434),
                        fontSize: 18.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  sizedBoxHeight(39.h),
                  Container(
                    child: PinCodeTextField(
                      showCursor: true,
                      cursorColor: const Color(0xFF143C6D),
                      textStyle: TextStyle(
                          fontSize: 18.sm, color: const Color(0xFF143C6D)),
                      errorTextSpace: 22,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Please Enter verification code";
                        } else if (value != null && value.length < 4) {
                          return "OTP length should be atleast 4";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        selectedFillColor: Colors.white,
                        inactiveFillColor: Colors.white,
                        inactiveColor: const Color(0xFFCCCCCC),
                        activeColor: const Color(0xFFCCCCCC),
                        selectedColor: const Color(0xFFCCCCCC),
                        shape: PinCodeFieldShape.box,
                        borderWidth: 0.10,
                        borderRadius: BorderRadius.circular(5),
                        activeBoxShadow: [
                          const BoxShadow(
                            color: Color(0x3F4C4C4C),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                        inActiveBoxShadow: [
                          const BoxShadow(
                            color: Color(0x3F4C4C4C),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                        fieldHeight: 60.h,
                        fieldWidth: 52.w,
                        activeFillColor: Colors.white,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      controller: servicedialogotp,
                      onCompleted: (v) {
                        print("Completed");
                      },
                      onChanged: (value) {
                        print(value);
                        setState(() {});
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");

                        return true;
                      },
                      appContext: context,
                    ),
                  ),
                  sizedBoxHeight(55.h),

                  InkWell(
                    onTap: () {
                      Get.back();
                      showdate.value = true;

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => Bookings(selectedPage: 2)));
                    },
                    child: Container(
                      width: 207.w,
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
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
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
            ),
          ],
        ),
      );
    }

    buildcontentotpdialog(context) {
      return showDialog(
        context: context,
        builder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              insetPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
              contentPadding: EdgeInsets.fromLTRB(24, 30, 24, 24),
              // insetPadding:
              //     EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
              backgroundColor:
                  Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
              // contentPadding: EdgeInsets.fromLTRB(20, 32, 20, 32),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(
                    color: Get.isDarkMode ? Colors.grey : Color(0XFFFFFFFF)),
              ),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //sizedBoxHeight(32.h),

                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Enter 4 digit OTP                       ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF373434),
                        fontSize: 18.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  sizedBoxHeight(39.h),
                  Container(
                    child: PinCodeTextField(
                      showCursor: true,
                      cursorColor: const Color(0xFF143C6D),
                      textStyle: TextStyle(
                          fontSize: 18.sm, color: const Color(0xFF143C6D)),
                      errorTextSpace: 22,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Please Enter verification code";
                        } else if (value != null && value.length < 4) {
                          return "OTP length should be atleast 4";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        selectedFillColor: Colors.white,
                        inactiveFillColor: Colors.white,
                        inactiveColor: const Color(0xFFCCCCCC),
                        activeColor: const Color(0xFFCCCCCC),
                        selectedColor: const Color(0xFFCCCCCC),
                        shape: PinCodeFieldShape.box,
                        borderWidth: 0.10,
                        borderRadius: BorderRadius.circular(5),
                        activeBoxShadow: [
                          const BoxShadow(
                            color: Color(0x3F4C4C4C),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                        inActiveBoxShadow: [
                          const BoxShadow(
                            color: Color(0x3F4C4C4C),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                        fieldHeight: 60.h,
                        fieldWidth: 52.w,
                        activeFillColor: Colors.white,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      controller: showdialogotp,
                      onCompleted: (v) {
                        print("Completed");
                      },
                      onChanged: (value) {
                        print(value);
                        setState(() {});
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");

                        return true;
                      },
                      appContext: context,
                    ),
                  ),
                  sizedBoxHeight(55.h),

                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Bookings(selectedPage: 2)));
                    },
                    child: Container(
                      width: 207.w,
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
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  )

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     InkWell(
                  //         onTap: () {
                  //           Get.back();
                  //           buildcontentotpdialog(context);
                  //           showdate.value = false;
                  //         },
                  //         child: Container(
                  //           width: 117.w,
                  //           height: 45.h,
                  //           decoration: ShapeDecoration(
                  //             color: Color(0xFFEF2B7B),
                  //             shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.only(
                  //                 topRight: Radius.circular(10),
                  //                 bottomLeft: Radius.circular(10),
                  //               ),
                  //             ),
                  //           ),
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: [
                  //               Text(
                  //                 'Yes',
                  //                 style: TextStyle(
                  //                   color: Colors.white,
                  //                   fontSize: 15.sp,
                  //                   fontFamily: 'AvenirNextCyr',
                  //                   fontWeight: FontWeight.w700,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         )),
                  //     sizedBoxWidth(28.w),
                  //     InkWell(
                  //         onTap: () {
                  //           Get.back();
                  //           // showdate.value = false;
                  //         },
                  //         child: Container(
                  //           width: 117.w,
                  //           height: 45.h,
                  //           decoration: ShapeDecoration(
                  //             shape: RoundedRectangleBorder(
                  //               side: BorderSide(
                  //                   width: 0.50, color: Color(0xFFEF2B7B)),
                  //               borderRadius: BorderRadius.only(
                  //                 topRight: Radius.circular(10),
                  //                 bottomLeft: Radius.circular(10),
                  //               ),
                  //             ),
                  //           ),
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: [
                  //               Text(
                  //                 'No',
                  //                 style: TextStyle(
                  //                   color: Color(0xFFEF2B7B),
                  //                   fontSize: 15.sp,
                  //                   fontFamily: 'AvenirNextCyr',
                  //                   fontWeight: FontWeight.w700,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         )),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    buildcontentservicedialog(context) {
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
                      'Are you sure you want to \nend service?',
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
                          onTap: () {
                            //  buildcontentcalldialog(context);
                            setState(() {
                              Get.back();
                              buildcontentotpdialog(context);
                              // showdate.value = false;
                            });
                          },
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
                            Get.back();
                            // showdate.value = false;
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

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sizedBoxHeight(10.h),
        Obx(() => Visibility(
            visible: showdate.value,
            child:
                // Obx(() =>
                Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Service started : 19 July 11.30 PM',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 15.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ))),
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
                          buildcontentcalldialogcaptain(context);
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
        sizedBoxHeight(52.h),
        // Padding(
        //   padding: EdgeInsets.only(left: 16.w),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       Opacity(
        //         opacity: 0.50,
        //         child: Text(
        //           'Enter 4 Digit OTP',
        //           textAlign: TextAlign.center,
        //           style: TextStyle(
        //             color: Color(0xFF373434),
        //             fontSize: 18.sp,
        //             fontFamily: 'AvenirNextCyr',
        //             fontWeight: FontWeight.w500,
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // sizedBoxHeight(42.h),

        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 26.w),
        //   child: Container(
        //     child: PinCodeTextField(
        //       showCursor: true,
        //       cursorColor: const Color(0xFF143C6D),
        //       textStyle:
        //           TextStyle(fontSize: 18.sm, color: const Color(0xFF143C6D)),
        //       errorTextSpace: 22,
        //       validator: (value) {
        //         if (value != null && value.isEmpty) {
        //           return "Please Enter verification code";
        //         } else if (value != null && value.length < 4) {
        //           return "OTP length should be atleast 4";
        //         }
        //         return null;
        //       },
        //       keyboardType: TextInputType.number,
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       length: 4,
        //       obscureText: false,
        //       animationType: AnimationType.fade,
        //       pinTheme: PinTheme(
        //         selectedFillColor: Colors.white,
        //         inactiveFillColor: Colors.white,
        //         inactiveColor: const Color(0xFFCCCCCC),
        //         activeColor: const Color(0xFFCCCCCC),
        //         selectedColor: const Color(0xFFCCCCCC),
        //         shape: PinCodeFieldShape.box,
        //         borderWidth: 0.10,
        //         borderRadius: BorderRadius.circular(5),
        //         activeBoxShadow: [
        //           const BoxShadow(
        //             color: Color(0x3F4C4C4C),
        //             blurRadius: 4,
        //             offset: Offset(0, 2),
        //             spreadRadius: 0,
        //           )
        //         ],
        //         inActiveBoxShadow: [
        //           const BoxShadow(
        //             color: Color(0x3F4C4C4C),
        //             blurRadius: 4,
        //             offset: Offset(0, 2),
        //             spreadRadius: 0,
        //           )
        //         ],
        //         fieldHeight: 60.h,
        //         fieldWidth: 52.w,
        //         activeFillColor: Colors.white,
        //       ),
        //       animationDuration: const Duration(milliseconds: 300),
        //       enableActiveFill: true,
        //       controller: livepinfield,
        //       onCompleted: (v) {
        //         print("Completed");
        //       },
        //       onChanged: (value) {
        //         print(value);
        //         setState(() {});
        //       },
        //       beforeTextPaste: (text) {
        //         print("Allowing to paste $text");

        //         return true;
        //       },
        //       appContext: context,
        //     ),
        //   ),
        // ),
        // sizedBoxHeight(10.h),

        Obx(
          () => Visibility(
            visible: !showdate.value,
            replacement: SliderButton(
              alignLabel: Alignment.center,

              width: 328.w,
              //  height: 50.h,
              buttonSize: 50,
              action: () {
                // buildcontentservicedialog(context);

                showdate.value = true;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Bookings(selectedPage: 2)));

                ///Do something here
                // Navigator.of(context).pop();
              },
              label: Text(
                'Slide to end service',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w700,
                ),
              ),
              icon: Center(
                child: Lottie.asset(
                  "assets/json/Arrows (1).json",
                ),
                //     SvgPicture.asset(
                //   "assets/images/chevrons-right (1).svg",
                //   semanticsLabel: 'Text to announce in accessibility modes',
                // ),
              ),
              buttonColor: Colors.white,
              backgroundColor: Color(0xFFEF2B7B),
              highlightedColor: Colors.white,
              baseColor: Colors.white,
            ),
            child: CustomButton(
                text: "Start Service",
                onTap: () {
                  // setState(() {0
                  buildcontentotpdialogservicebutton(context);

                  // showdate.value = true;
                  // // });
                  // print(showdate);
                  // print("text visible");
                }),
          ),
        ),
        sizedBoxHeight(100.h),
        Text(""),
      ],
    );
  }
}
