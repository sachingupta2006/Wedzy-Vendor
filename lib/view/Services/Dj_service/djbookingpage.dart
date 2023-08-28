import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/appbarservices.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/themedata.dart';

class Djbookingspage extends StatefulWidget {
  const Djbookingspage({super.key});

  @override
  State<Djbookingspage> createState() => _DjbookingspageState();
}

class _DjbookingspageState extends State<Djbookingspage> {
  String? selectedValue;
  String _lastSelected = 'TAB: 0';
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  CalendarView _view = CalendarView.month;
  final GlobalKey _globalKey = GlobalKey();
  Appointment? _selectedAppointment;
  late List<DateTime> _visibleDates;
  final CalendarController calendarController = CalendarController();

  void _onViewChanged(ViewChangedDetails visibleDatesChangedDetails) {
    _visibleDates = visibleDatesChangedDetails.visibleDates;
    if (_view == calendarController.view ||
        (_view != CalendarView.month &&
            calendarController.view != CalendarView.month)) {
      return;
    }

    SchedulerBinding.instance.addPostFrameCallback((Duration timeStamp) {
      setState(() {
        _view = calendarController.view!;

        /// Update the current view when the calendar view changed to
        /// month view or from month view.
      });
    });
  }

  final List<CalendarView> _allowedViews = <CalendarView>[
    // CalendarView.day,
    // CalendarView.week,
    // CalendarView.workWeek,
    CalendarView.month,
    // CalendarView.schedule
  ];
  void _onCalendarTapped(CalendarTapDetails calendarTapDetails) {
    /// Condition added to open the editor, when the calendar elements tapped
    /// other than the header.
    if (calendarTapDetails.targetElement == CalendarElement.header ||
        calendarTapDetails.targetElement == CalendarElement.resourceHeader) {
      return;
    }

    _selectedAppointment = null;

    /// Navigates the calendar to day view,
    /// when we tap on month cells in mobile.
    if (calendarController.view == CalendarView.month) {
      calendarController.view = CalendarView.day;
    } else {
      if (calendarTapDetails.appointments != null &&
          calendarTapDetails.targetElement == CalendarElement.appointment) {
        final dynamic appointment = calendarTapDetails.appointments![0];
        if (appointment is Appointment) {
          _selectedAppointment = appointment;
        }
      }

      final DateTime selectedDate = calendarTapDetails.date!;
      final CalendarElement targetElement = calendarTapDetails.targetElement;
    }
  }

  SfCalendar _getAppointmentEditorCalendar(
      [CalendarController? calendarController,
      CalendarDataSource? calendarDataSource,
      dynamic calendarTapCallback,
      ViewChangedCallback? viewChangedCallback,
      dynamic scheduleViewBuilder]) {
    return SfCalendar(
        todayHighlightColor: const Color(0xffEE3764),
        backgroundColor: Colors.white,
        controller: calendarController,
        showNavigationArrow: false,
        allowedViews: _allowedViews,
        showDatePickerButton: true,
        scheduleViewMonthHeaderBuilder: scheduleViewBuilder,
        dataSource: calendarDataSource,
        onTap: calendarTapCallback,
        onViewChanged: viewChangedCallback,
        initialDisplayDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day),
        monthViewSettings: const MonthViewSettings(
            appointmentDisplayMode: MonthAppointmentDisplayMode.indicator),
        timeSlotViewSettings: const TimeSlotViewSettings(
            minimumAppointmentDuration: Duration(minutes: 60)));
  }

  @override
  void initState() {
    calendarController.view = _view;
    super.initState();
  }

  buildcontentdeletedialog(context) {
    return showDialog(
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
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
                sizedBoxHeight(17.h),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Are you sure you want delete?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF373434),
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
                          Navigator.pop(context);
                        },
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
                sizedBoxHeight(17.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Widget calendar = _getAppointmentEditorCalendar(
      calendarController,
    );
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: "Bookings",
        preferredSize: Size.fromHeight(50),
      ),
      // Appbarservices(titleTxt: "  Bookings"),
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
                                  backgroundColor: AppColors.buttoncolour,
                                  child: SvgPicture.asset(
                                    "assets/images/check.svg",
                                    width: 10.w,
                                    height: 10.h,
                                  )),
                            ),
                            Text(
                              'Add \nPackage',
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
                                  '5',
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
                              'Bookings\n',
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
                            width: 259.w,
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
            sizedBoxHeight(33.h),
            Stack(
              clipBehavior: Clip.none,
              children: [
                calendar,
              ],
            ),
            sizedBoxHeight(22.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/djaddevent');
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
              width: 328.w,
              height: 357.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.10, color: Color(0xFF9B9B9B)),
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
                        Text(
                          'Event Details',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 18.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        sizedBoxWidth(137.w),
                        GestureDetector(
                            onTap: () {
                              Get.toNamed('/djaddevent');
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
                        Text(
                          'Customer Name - ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          ' Akanksha Surve',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    sizedBoxHeight(11.h),
                    Row(
                      children: [
                        Text(
                          'Package Selected -',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          ' Wedding Package',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 14.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    sizedBoxHeight(11.h),
                    Row(
                      children: [
                        Text(
                          'Advance Received -',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          ' ₹ 10,000',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    sizedBoxHeight(11.h),
                    Row(
                      children: [
                        Text(
                          'Balance -',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          ' ₹ 10,000',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    sizedBoxHeight(11.h),
                    Row(
                      children: [
                        Text(
                          'Address -',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          ' Malad West, Mumbai',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    sizedBoxHeight(11.h),
                    Row(
                      children: [
                        Text(
                          'Additional notes -',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          ' Lorem Ipsum Dolor Sit ',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Amet, Consectetur Adipiscing Elit. Ut Et Massa Mi.',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            sizedBoxHeight(88.h),
            CustomButton(
                text: "Next",
                onTap: () {
                  Get.toNamed('/djbookingdone');
                }),
            sizedBoxHeight(40.h),
          ],
        ),
      )),
    );
  }
}
