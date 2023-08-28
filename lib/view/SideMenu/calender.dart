import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
          titleTxt: 'Calendar', preferredSize: const Size.fromHeight(50)),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SfCalendar(
              view: CalendarView.month,
              firstDayOfWeek: 1,
              cellBorderColor: AppColors.white,
              todayHighlightColor: AppColors.buttoncolour,
              todayTextStyle: const TextStyle(color: AppColors.white),
              controller: _calendarController,
              showNavigationArrow: true,
              allowViewNavigation: true,
              monthViewSettings: const MonthViewSettings(),
              timeSlotViewSettings: const TimeSlotViewSettings(
                  minimumAppointmentDuration: Duration(minutes: 60)),
            ),
            sizedBoxHeight(15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text373434_15w400('Today'),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/addeventform');
                  },
                  child: CircleAvatar(
                      radius: 21.w,
                      backgroundColor: AppColors.buttoncolour,
                      child: SvgPicture.asset(
                        "assets/images/pluswhite.svg",
                        width: 30.w,
                        height: 30.h,
                      )),
                ),
              ],
            ),
            sizedBoxHeight(10.h),
            Container(
              padding: EdgeInsets.fromLTRB(15.w, 14.h, 12.w, 60.h),
              // width: 328.w,
              // height: 357.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.10, color: Color(0xFF9B9B9B)),
                  borderRadius: BorderRadius.circular(9),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F858585),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 9.w, right: 12.w, top: 14.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        text373434_18w700('Event Details'),
                        const Spacer(),
                        GestureDetector(
                            onTap: () {
                              Get.toNamed('/addeventform');
                            },
                            child:
                                SvgPicture.asset("assets/images/edit-3.svg")),
                        sizedBoxWidth(19.w),
                        GestureDetector(
                            onTap: () {
                              buildcontentdeletedialog(context);
                            },
                            child:
                                SvgPicture.asset("assets/images/trash-2.svg")),
                      ],
                    ),
                    sizedBoxHeight(9.h),
                    Row(
                      children: [
                        text373434_15w400('Customer Name - '),
                        text707070_15w400(' Akanksha Surve')
                      ],
                    ),
                    sizedBoxHeight(11.h),
                    Row(
                      children: [
                        text373434_15w400('Package Selected -'),
                        text707070_15w400(' Wedding Package')
                      ],
                    ),
                    sizedBoxHeight(11.h),
                    Row(
                      children: [
                        text373434_15w400('Advance Received -'),
                        text707070_15w400(' ₹ 10,000')
                      ],
                    ),
                    sizedBoxHeight(11.h),
                    Row(
                      children: [
                        text373434_15w400('Balance -'),
                        text707070_15w400(' ₹ 10,000')
                      ],
                    ),
                    sizedBoxHeight(11.h),
                    Row(
                      children: [
                        text373434_15w400('Address -'),
                        text707070_15w400(' Malad West, Mumbai')
                      ],
                    ),
                    sizedBoxHeight(11.h),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(children: [
                        WidgetSpan(
                            child: text373434_15w400('Additional notes -')),
                        WidgetSpan(
                            child: text707070_15w400(
                                ' Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Ut Et Massa Mi.')),
                      ])
                    ])),
                  ],
                ),
              ),
            ),
            sizedBoxHeight(50.h),
          ],
        ),
      ),
    );
  }

  buildcontentdeletedialog(context) {
    return showDialog(
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            insetPadding: const EdgeInsets.symmetric(horizontal: 16),
            backgroundColor:
                Get.isDarkMode ? Colors.black : const Color(0XFFFFFFFF),
            //contentPadding: EdgeInsets.fromLTRB(96, 32, 96, 28),
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              side: BorderSide(
                  color:
                      Get.isDarkMode ? Colors.grey : const Color(0XFFFFFFFF)),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxHeight(17.h),
                Align(
                  alignment: Alignment.center,
                  child: text373434_18w400('Are you sure you want delete?'),
                ),
                sizedBoxHeight(21.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          width: 117.w,
                          height: 36.h,
                          decoration: const ShapeDecoration(
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
                              textWhite15w700('Yes'),
                            ],
                          ),
                        )),
                    sizedBoxWidth(28.w),
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          width: 117.w,
                          height: 36.h,
                          decoration: const ShapeDecoration(
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
                              textEF2B2B_15w700('No'),
                            ],
                          ),
                        )),
                  ],
                ),
                sizedBoxHeight(17.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
