import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_appbar.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/themedata.dart';
import 'package:wedzy/view/SideMenu/Request/requestdata.dart';

class Requestmain extends StatefulWidget {
  const Requestmain({super.key});

  @override
  State<Requestmain> createState() => _RequestmainState();
}

class _RequestmainState extends State<Requestmain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: "Requests",
        preferredSize: Size.fromHeight(50),
      ),
      // AppBar(
      //   backgroundColor: AppColors.white,
      //   title: customAppBar(text: "Requests"),
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      //   titleSpacing: 0,
      // ),
      body: SafeArea(
          child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: <Widget>[
                  TabBar(
                      unselectedLabelColor: Color(0xffEF2B7B),
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffEF2B7B)),
                      tabs: [
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Color(0xffEF2B7B), width: 1)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Pending(2)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  // color: Colors.white,
                                  fontSize: 15.sp,
                                  fontFamily: 'AvenirNextCyr',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              // Text("APPS"),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Color(0xffEF2B7B), width: 1)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Completed(1)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  // color: Color(0xffEF2B7B),
                                  fontSize: 15.sp,
                                  fontFamily: 'AvenirNextCyr',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              // Text("APPS"),
                            ),
                          ),
                        ),
                      ]),
                  Expanded(
                      child: TabBarView(children: [FirstTab(), SeconTab()]))
                ],
              ))),
    );
  }
}

class FirstTab extends StatefulWidget {
  const FirstTab({super.key});

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            sizedBoxHeight(21.h),
            ListView.separated(
              separatorBuilder: (context, index) {
                return sizedBoxHeight(15.h);
              },
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: requestData.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    requestcard(
                      requestData[index]["number"],
                      requestData[index]["text1"],
                      requestData[index]["subtext"],
                      index,
                    )
                  ],
                );
              },
            ),
            sizedBoxHeight(15.h),
          ],
        ),
      ),
    );
  }

  Widget requestcard(
      dynamic number, dynamic text1, dynamic subtext, int index) {
    return Container(
      width: 328.w,
      height: 88.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.15, color: Color(0xFFB7B7B7)),
          borderRadius: BorderRadius.circular(5),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F727272),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          // sizedBoxHeight(11.h),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 10.w,
                  // right: 20.w
                ),
                child: Text(
                  number,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              sizedBoxWidth(12.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxHeight(16.h),
                  Text(
                    text1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  sizedBoxHeight(2.h),
                  Text(
                    subtext,
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
              sizedBoxWidth(135.w),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/orderdetails");
                },
                child: SvgPicture.asset(
                  "assets/images/edit.svg",
                  width: 16.w,
                  height: 16.w,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class SeconTab extends StatefulWidget {
  const SeconTab({super.key});

  @override
  State<SeconTab> createState() => _SeconTabState();
}

class _SeconTabState extends State<SeconTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxHeight(30.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Request Raised: 10 June 2023",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  sizedBoxHeight(2.h),
                  Text(
                    "Order Id : #467896",
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
              sizedBoxWidth(90.w),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/orderdetails");
                },
                child: SvgPicture.asset(
                  "assets/images/edit.svg",
                  width: 16.w,
                  height: 16.w,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
