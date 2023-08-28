import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    List days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBarDynamic(
          titleTxt: 'Statistics',
          preferredSize: const Size.fromHeight(70),
          useCustomWidget: true,
          customWidget: TabBar(
              dividerColor: AppColors.secondary,
              indicatorColor: AppColors.buttoncolour,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 16.w),
              indicatorWeight: 3,
              labelPadding: EdgeInsets.symmetric(vertical: 4.h),
              tabs: [
                text373434_15w400('Activity'),
                text373434_15w400('Products'),
                text373434_15w400('Audience'),
              ]),
        ),
        body: TabBarView(children: [
          Tab1statistic(),
          Tab2statistic(),
          tab3(),
        ]),
      ),
    );
  }

  Widget tab3() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Divider(color: AppColors.buttoncolour),
            sizedBoxHeight(14.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text373434_15w400('Top Locations'),
                sizedBoxHeight(20.h)
              ],
            ),
            RotatedBox(
              quarterTurns: 1,
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(
                  axisLine: const AxisLine(width: 0),
                  labelRotation: 270,
                  majorTickLines: const MajorTickLines(width: 0),
                  majorGridLines: const MajorGridLines(width: 0),
                ),
                primaryYAxis: NumericAxis(
                    isVisible: false,
                    minimum: 0,
                    maximum: 50,
                    interval: 10,
                    majorTickLines: const MajorTickLines(width: 0),
                    majorGridLines: const MajorGridLines(width: 0)),
                series: <ChartSeries>[
                  ColumnSeries<Data, String>(
                    dataSource: <Data>[
                      Data('Malad', 30),
                      Data('Andheri', 25),
                      Data('Borivali', 33),
                      Data('Virar', 17),
                      Data('Vasai', 28),
                    ],
                    xValueMapper: (Data data, _) => data.day,
                    yValueMapper: (Data data, _) => data.value,
                    color: AppColors.buttoncolour,
                    width: 0.6,
                  ),
                ],
              ),
            ),
            sizedBoxHeight(31.h),
          ],
        ),
      ),
    );
  }

  // Widget tab2() {
  //   return SingleChildScrollView(
  //     physics: const BouncingScrollPhysics(),
  //     child: Padding(
  //       padding: EdgeInsets.symmetric(horizontal: 16.w),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         children: [
  //           const Divider(color: AppColors.buttoncolour),
  //           sizedBoxHeight(14.h),
  //           Row(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             children: [
  //               Container(
  //                 padding:
  //                     EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
  //                 decoration: ShapeDecoration(
  //                   color: const Color(0x00D9D9D9),
  //                   shape: RoundedRectangleBorder(
  //                     side: const BorderSide(
  //                         width: 0.25, color: Color(0xFFEE3764)),
  //                     borderRadius: BorderRadius.circular(16.50),
  //                   ),
  //                 ),
  //                 child: Row(
  //                   children: [
  //                     text373434_10w400('01-07 May'),
  //                     sizedBoxWidth(4.w),
  //                     Icon(Icons.keyboard_arrow_down,
  //                         color: AppColors.buttoncolour, size: 12.h)
  //                   ],
  //                 ),
  //               )
  //             ],
  //           ),
  //           SfCartesianChart(
  //             primaryXAxis: CategoryAxis(
  //               majorTickLines: const MajorTickLines(width: 0),
  //               majorGridLines: const MajorGridLines(width: 0),
  //             ),
  //             primaryYAxis: NumericAxis(
  //               minimum: 0,
  //               maximum: 50,
  //               interval: 10,
  //               majorTickLines: const MajorTickLines(width: 0),
  //               majorGridLines: const MajorGridLines(
  //                   color: AppColors.secondary, width: 0.2),
  //             ),
  //             series: <ChartSeries>[
  //               ColumnSeries<Data, String>(
  //                   dataSource: <Data>[
  //                     Data('Necklace', 30),
  //                     Data('Anklets', 25),
  //                     Data('Earrings', 33),
  //                     Data('Armlet', 17),
  //                     Data('Nath', 28),
  //                   ],
  //                   xValueMapper: (Data data, _) => data.day,
  //                   yValueMapper: (Data data, _) => data.value,
  //                   color: AppColors.buttoncolour,
  //                   width: 0.3,
  //                   borderRadius: const BorderRadius.only(
  //                       topLeft: Radius.circular(25),
  //                       topRight: Radius.circular(25))),
  //             ],
  //           ),
  //           sizedBoxHeight(50.h),
  //           DefaultTabController(
  //               length: 2,
  //               child: Column(
  //                 children: [
  //                   TabBar(
  //                       dividerColor: AppColors.secondary,
  //                       indicatorColor: AppColors.buttoncolour,
  //                       indicatorPadding:
  //                           EdgeInsets.symmetric(horizontal: 16.w),
  //                       indicatorWeight: 3,
  //                       labelStyle: TextStyle(
  //                           fontSize: 15.sp,
  //                           color: const Color(0xff373434),
  //                           fontWeight: FontWeight.w700),
  //                       unselectedLabelStyle: TextStyle(
  //                           fontSize: 15.sp,
  //                           color: const Color(0xff373434),
  //                           fontWeight: FontWeight.w400),
  //                       labelColor: AppColors.black,
  //                       labelPadding: EdgeInsets.symmetric(vertical: 5.h),
  //                       tabs: const [
  //                         Text('Top Rated'),
  //                         Text('Popular'),
  //                       ]),
  //                   SizedBox(
  //                     height: 600.h,
  //                     child: TabBarView(children: [
  //                       topRated(),
  //                       popular(),
  //                     ]),
  //                   )
  //                 ],
  //               ))
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget topRated() {
  //   return Column(
  //     children: [
  //       rowWidgetTop(1, 'Necklace', '₹ 10000'),
  //       rowWidgetTop(4, 'Earrings', '₹ 10000'),
  //       rowWidgetTop(2, 'Earrings', '₹ 10000'),
  //     ],
  //   );
  // }

  // Widget rowWidgetTop(int image, String title, String amount) {
  //   return Column(
  //     children: [
  //       sizedBoxHeight(20.h),
  //       Row(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Row(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Image.asset('assets/images/order$image.png',
  //                   width: 64.w, height: 58.w, fit: BoxFit.fill),
  //               sizedBoxWidth(17.w),
  //               Column(
  //                 children: [
  //                   text373434_15w400(title),
  //                   sizedBoxHeight(5.h),
  //                   text373434_15w400(amount)
  //                 ],
  //               )
  //             ],
  //           ),
  //           Column(
  //             children: [
  //               SvgPicture.asset('assets/images/SVG/stars.svg'),
  //               sizedBoxHeight(5.h),
  //               text373737_12w400('(4.5)  120 Reviews'),
  //             ],
  //           )
  //         ],
  //       ),
  //       sizedBoxHeight(18.h),
  //       const Divider()
  //     ],
  //   );
  // }

  // Widget popular() {
  //   return Column(
  //     children: [
  //       rowWidgetPopular(1, 'Necklace', '₹ 10000'),
  //       rowWidgetPopular(4, 'Earrings', '₹ 10000'),
  //       rowWidgetPopular(2, 'Earrings', '₹ 10000'),
  //     ],
  //   );
  // }

  // Widget rowWidgetPopular(int image, String title, String amount) {
  //   return Column(
  //     children: [
  //       sizedBoxHeight(20.h),
  //       Row(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Image.asset('assets/images/order$image.png',
  //               width: 64.w, height: 58.w, fit: BoxFit.fill),
  //           sizedBoxWidth(17.w),
  //           Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               text373434_15w400(title),
  //               text999999_15w400('Lorem ipsum dolor sit amet'),
  //               text373434_15w400(amount)
  //             ],
  //           )
  //         ],
  //       ),
  //       sizedBoxHeight(12.h),
  //       const Divider()
  //     ],
  //   );
  // }

  // Widget tab1() {
  //     final CalendarController calendarController = CalendarController();
  // late List<DateTime> _visibleDates;
  // Appointment? _selectedAppointment;
  // CalendarView _view = CalendarView.month;

  //   List<Appointment> _getDataSource() {
  //   final List<Appointment> meetings = <Appointment>[];
  //   final DateTime today = DateTime.now();
  //   final DateTime startTime =
  //       DateTime(today.year, today.month, today.day, 9, 0, 0);
  //   final DateTime endTime = startTime.add(const Duration(hours: 2));
  //   meetings.add(Appointment(
  //       subject: 'Conference',
  //       color: Color(0xFF0F8644),
  //       endTime: endTime,
  //       isAllDay: false,
  //       startTime: startTime));
  //   return meetings;
  // }

  

    
  //   void _openModalBottomSheet(BuildContext context) async {
  //   FocusScope.of(context).unfocus();
  //   final data = await showModalBottomSheet<dynamic>(
  //     isScrollControlled: true,
  //     context: context,
  //     builder: (context) {
  //       return Container(
  //         margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             SvgPicture.asset("assets/images/Vector.svg"),
  //             _getAppointmentEditorCalendar(
  //               calendarController,
  //               MeetingDataSource(_getDataSource()),
  //               _onCalendarTapped,
  //               _onViewChanged,
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(30),
  //         topRight: Radius.circular(30),
  //       ),
  //     ),
  //     backgroundColor: Theme.of(context).scaffoldBackgroundColor,
  //   );

  //   if (data != null) {
  //     // setState(() {
  //     //   //  selectedIntrestedInInvesting = data;
  //     // });
  //   }
  // }

  //   final List<CalendarView> _allowedViews = <CalendarView>[
  //   // CalendarView.day,
  //   // CalendarView.week,
  //   // CalendarView.workWeek,
  //   CalendarView.month,
  //   // CalendarView.schedule
  // ];

  //   void _onViewChanged(ViewChangedDetails visibleDatesChangedDetails) {
  //   _visibleDates = visibleDatesChangedDetails.visibleDates;
  //   if (_view == calendarController.view ||
  //       (_view != CalendarView.month &&
  //           calendarController.view != CalendarView.month)) {
  //     return;
  //   }

  //   SchedulerBinding.instance.addPostFrameCallback((Duration timeStamp) {
  //     // setState(() {
  //     //   _view = calendarController.view!;

  //     //   /// Update the current view when the calendar view changed to
  //     //   /// month view or from month view.
  //     // });
  //   });
  // }

  //  SfCalendar _getAppointmentEditorCalendar(
  //     [CalendarController? calendarController,
  //     CalendarDataSource? calendarDataSource,
  //     dynamic calendarTapCallback,
  //     ViewChangedCallback? viewChangedCallback,
  //     dynamic scheduleViewBuilder]) {
  //   return SfCalendar(
  //       todayHighlightColor: AppColors.buttoncolour,
  //       backgroundColor: Color(0xFFF8F8F8),
  //       controller: calendarController,
  //       showNavigationArrow: false,
  //       allowedViews: _allowedViews,
  //       showDatePickerButton: true,
  //       scheduleViewMonthHeaderBuilder: scheduleViewBuilder,
  //       dataSource: calendarDataSource,
  //       onTap: calendarTapCallback,
  //       onViewChanged: viewChangedCallback,
  //       initialDisplayDate: DateTime(
  //           DateTime.now().year, DateTime.now().month, DateTime.now().day),
  //       monthViewSettings: const MonthViewSettings(
  //           appointmentDisplayMode: MonthAppointmentDisplayMode.indicator),
  //       timeSlotViewSettings: const TimeSlotViewSettings(
  //           minimumAppointmentDuration: Duration(minutes: 60)));
  // }

  //   void _onCalendarTapped(CalendarTapDetails calendarTapDetails) {
  //   /// Condition added to open the editor, when the calendar elements tapped
  //   /// other than the header.
  //   if (calendarTapDetails.targetElement == CalendarElement.header ||
  //       calendarTapDetails.targetElement == CalendarElement.resourceHeader) {
  //     return;
  //   }

  //   _selectedAppointment = null;

  //   /// Navigates the calendar to day view,
  //   /// when we tap on month cells in mobile.
  //   if (calendarController.view == CalendarView.month) {
  //     calendarController.view = CalendarView.day;
  //   } else {
  //     if (calendarTapDetails.appointments != null &&
  //         calendarTapDetails.targetElement == CalendarElement.appointment) {
  //       final dynamic appointment = calendarTapDetails.appointments![0];
  //       if (appointment is Appointment) {
  //         _selectedAppointment = appointment;
  //       }
  //     }

  //     final DateTime selectedDate = calendarTapDetails.date!;
  //     final CalendarElement targetElement = calendarTapDetails.targetElement;
  //   }
  // }
  //   final Widget calendar = _getAppointmentEditorCalendar(
  //     calendarController,
  //     MeetingDataSource(_getDataSource()),
  //     _onCalendarTapped,
  //     _onViewChanged,
  //   );
  //   return 
  //   SingleChildScrollView(
  //     physics: const BouncingScrollPhysics(),
  //     child: Padding(
  //       padding: EdgeInsets.symmetric(horizontal: 16.w),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         children: [
  //           const Divider(color: AppColors.buttoncolour),
  //           sizedBoxHeight(14.h),
  //           text373434_15w400('Actions'),
  //           Row(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               sizedBoxWidth(80.w),
  //               Column(
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 children: [
  //                   text373434_15w400('3,552'),
  //                   sizedBoxHeight(3.h),
  //                   text707070_10w400('Actions from \nMay 01-May07')
  //                 ],
  //               ),
  //               InkWell(
  //                 onTap: () => _openModalBottomSheet(context as BuildContext),
  //                 child: Container(
  //                   padding:
  //                       EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
  //                   decoration: ShapeDecoration(
  //                     color: const Color(0x00D9D9D9),
  //                     shape: RoundedRectangleBorder(
  //                       side: const BorderSide(
  //                           width: 0.25, color: Color(0xFFEE3764)),
  //                       borderRadius: BorderRadius.circular(16.50),
  //                     ),
  //                   ),
  //                   child: Row(
  //                     children: [
  //                       text373434_10w400('01-07 May'),
  //                       sizedBoxWidth(4.w),
  //                       Icon(Icons.keyboard_arrow_down,
  //                           color: AppColors.buttoncolour, size: 12.h)
  //                     ],
  //                   ),
  //                 ),
  //               )
  //             ],
  //           ),
  //           SfCartesianChart(
  //             primaryXAxis: CategoryAxis(
  //               majorTickLines: const MajorTickLines(width: 0),
  //               majorGridLines: const MajorGridLines(width: 0),
  //             ),
  //             primaryYAxis: NumericAxis(
  //               minimum: 0,
  //               maximum: 50,
  //               interval: 10,
  //               majorTickLines: const MajorTickLines(width: 0),
  //               majorGridLines: const MajorGridLines(
  //                   color: AppColors.secondary, width: 0.2),
  //             ),
  //             series: <ChartSeries>[
  //               ColumnSeries<Data, String>(
  //                   dataSource: <Data>[
  //                     Data('Mon', 30),
  //                     Data('Tue', 25),
  //                     Data('Wed', 33),
  //                     Data('Thu', 17),
  //                     Data('Fri', 28),
  //                     Data('Sat', 17),
  //                     Data('Sun', 28),
  //                   ],
  //                   xValueMapper: (Data data, _) => data.day,
  //                   yValueMapper: (Data data, _) => data.value,
  //                   color: AppColors.buttoncolour,
  //                   width: 0.4,
  //                   borderRadius: const BorderRadius.only(
  //                       topLeft: Radius.circular(25),
  //                       topRight: Radius.circular(25))),
  //             ],
  //           ),
  //           sizedBoxHeight(31.h),
  //           profileRow('Profile Visits', '+212 in the last 7 days', '3,245'),
  //           profileRow('Call Clicks', '+100 in the last 7 days', '8'),
  //           profileRow('Booking Clicks', '+110 in the last 7 days', '8'),
  //           profileRow('Order Clicks', '+110 in the last 7 days', '5'),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  
  // Widget profileRow(String title, String subTitle, String int) {
  //   return Column(
  //     children: [
  //       Row(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               text373434_15w400(title),
  //               sizedBoxHeight(4.h),
  //               text707070_12w400(subTitle)
  //             ],
  //           ),
  //           text373434_15w400(int),
  //         ],
  //       ),
  //       sizedBoxHeight(20.h)
  //     ],
  //   );
  // }
}

class Data {
  final String day;
  final double value;

  Data(this.day, this.value);
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}


class Tab1statistic extends StatefulWidget {
  const Tab1statistic({super.key});

  @override
  State<Tab1statistic> createState() => _Tab1statisticState();
}

class _Tab1statisticState extends State<Tab1statistic> {
    final CalendarController calendarController = CalendarController();
  late List<DateTime> _visibleDates;
  Appointment? _selectedAppointment;
  CalendarView _view = CalendarView.month;

   final List<CalendarView> _allowedViews = <CalendarView>[
    // CalendarView.day,
    // CalendarView.week,
    // CalendarView.workWeek,
    CalendarView.month,
    // CalendarView.schedule
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    calendarController.view = _view;
  }

    List<Appointment> _getDataSource() {
    final List<Appointment> meetings = <Appointment>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(Appointment(
        subject: 'Conference',
        color: Color(0xFF0F8644),
        endTime: endTime,
        isAllDay: false,
        startTime: startTime));
    return meetings;
  }

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

  void _openModalBottomSheet(BuildContext context) async {
    FocusScope.of(context).unfocus();
    final data = await showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset("assets/images/Vector.svg"),
              _getAppointmentEditorCalendar(
                calendarController,
                MeetingDataSource(_getDataSource()),
                _onCalendarTapped,
                _onViewChanged,
              ),
            ],
          ),
        );
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );

    if (data != null) {
      setState(() {
        //  selectedIntrestedInInvesting = data;
      });
    }
  }

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

   SfCalendar _getAppointmentEditorCalendar(
      [CalendarController? calendarController,
      CalendarDataSource? calendarDataSource,
      dynamic calendarTapCallback,
      ViewChangedCallback? viewChangedCallback,
      dynamic scheduleViewBuilder]) {
    return SfCalendar(
        todayHighlightColor: AppColors.buttoncolour,
        backgroundColor: Color(0xFFF8F8F8),
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
  Widget build(BuildContext context) {
     final Widget calendar = _getAppointmentEditorCalendar(
      calendarController,
      MeetingDataSource(_getDataSource()),
      _onCalendarTapped,
      _onViewChanged,
    );
    return 
    SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Divider(color: AppColors.buttoncolour),
            sizedBoxHeight(14.h),
            text373434_15w400('Actions'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                sizedBoxWidth(80.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    text373434_15w400('3,552'),
                    sizedBoxHeight(3.h),
                    text707070_10w400('Actions from \nMay 01-May07')
                  ],
                ),
                InkWell(
                  onTap: () => _openModalBottomSheet(context),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                    decoration: ShapeDecoration(
                      color: const Color(0x00D9D9D9),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.25, color: Color(0xFFEE3764)),
                        borderRadius: BorderRadius.circular(16.50),
                      ),
                    ),
                    child: Row(
                      children: [
                        text373434_10w400('01-07 May'),
                        sizedBoxWidth(4.w),
                        Icon(Icons.keyboard_arrow_down,
                            color: AppColors.buttoncolour, size: 12.h)
                      ],
                    ),
                  ),
                )
              ],
            ),
            SfCartesianChart(
              primaryXAxis: CategoryAxis(
                majorTickLines: const MajorTickLines(width: 0),
                majorGridLines: const MajorGridLines(width: 0),
              ),
              primaryYAxis: NumericAxis(
                minimum: 0,
                maximum: 50,
                interval: 10,
                majorTickLines: const MajorTickLines(width: 0),
                majorGridLines: const MajorGridLines(
                    color: AppColors.secondary, width: 0.2),
              ),
              series: <ChartSeries>[
                ColumnSeries<Data, String>(
                    dataSource: <Data>[
                      Data('Mon', 30),
                      Data('Tue', 25),
                      Data('Wed', 33),
                      Data('Thu', 17),
                      Data('Fri', 28),
                      Data('Sat', 17),
                      Data('Sun', 28),
                    ],
                    xValueMapper: (Data data, _) => data.day,
                    yValueMapper: (Data data, _) => data.value,
                    color: AppColors.buttoncolour,
                    width: 0.4,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
              ],
            ),
            sizedBoxHeight(31.h),
            profileRow('Profile Visits', '+212 in the last 7 days', '3,245'),
            profileRow('Call Clicks', '+100 in the last 7 days', '8'),
            profileRow('Booking Clicks', '+110 in the last 7 days', '8'),
            profileRow('Order Clicks', '+110 in the last 7 days', '5'),
          ],
        ),
      ),
    );
  }

   Widget profileRow(String title, String subTitle, String int) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text373434_15w400(title),
                sizedBoxHeight(4.h),
                text707070_12w400(subTitle)
              ],
            ),
            text373434_15w400(int),
          ],
        ),
        sizedBoxHeight(20.h)
      ],
    );
  }
}


class Tab2statistic extends StatefulWidget {
  const Tab2statistic({super.key});

  @override
  State<Tab2statistic> createState() => _Tab2statisticState();
}

class _Tab2statisticState extends State<Tab2statistic> {
    final CalendarController calendarController = CalendarController();
  late List<DateTime> _visibleDates;
  Appointment? _selectedAppointment;
  CalendarView _view = CalendarView.month;

   final List<CalendarView> _allowedViews = <CalendarView>[
    // CalendarView.day,
    // CalendarView.week,
    // CalendarView.workWeek,
    CalendarView.month,
    // CalendarView.schedule
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    calendarController.view = _view;
  }

    List<Appointment> _getDataSource() {
    final List<Appointment> meetings = <Appointment>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(Appointment(
        subject: 'Conference',
        color: Color(0xFF0F8644),
        endTime: endTime,
        isAllDay: false,
        startTime: startTime));
    return meetings;
  }

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

  void _openModalBottomSheet(BuildContext context) async {
    FocusScope.of(context).unfocus();
    final data = await showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset("assets/images/Vector.svg"),
              _getAppointmentEditorCalendar(
                calendarController,
                MeetingDataSource(_getDataSource()),
                _onCalendarTapped,
                _onViewChanged,
              ),
            ],
          ),
        );
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );

    if (data != null) {
      setState(() {
        //  selectedIntrestedInInvesting = data;
      });
    }
  }

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

   SfCalendar _getAppointmentEditorCalendar(
      [CalendarController? calendarController,
      CalendarDataSource? calendarDataSource,
      dynamic calendarTapCallback,
      ViewChangedCallback? viewChangedCallback,
      dynamic scheduleViewBuilder]) {
    return SfCalendar(
        todayHighlightColor: AppColors.buttoncolour,
        backgroundColor: Color(0xFFF8F8F8),
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
  Widget build(BuildContext context) {
     final Widget calendar = _getAppointmentEditorCalendar(
      calendarController,
      MeetingDataSource(_getDataSource()),
      _onCalendarTapped,
      _onViewChanged,
    );
    return 
    SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Divider(color: AppColors.buttoncolour),
            sizedBoxHeight(14.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => _openModalBottomSheet(context),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                    decoration: ShapeDecoration(
                      color: const Color(0x00D9D9D9),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.25, color: Color(0xFFEE3764)),
                        borderRadius: BorderRadius.circular(16.50),
                      ),
                    ),
                    child: Row(
                      children: [
                        text373434_10w400('01-07 May'),
                        sizedBoxWidth(4.w),
                        Icon(Icons.keyboard_arrow_down,
                            color: AppColors.buttoncolour, size: 12.h)
                      ],
                    ),
                  ),
                )
              ],
            ),
            SfCartesianChart(
              primaryXAxis: CategoryAxis(
                majorTickLines: const MajorTickLines(width: 0),
                majorGridLines: const MajorGridLines(width: 0),
              ),
              primaryYAxis: NumericAxis(
                minimum: 0,
                maximum: 50,
                interval: 10,
                majorTickLines: const MajorTickLines(width: 0),
                majorGridLines: const MajorGridLines(
                    color: AppColors.secondary, width: 0.2),
              ),
              series: <ChartSeries>[
                ColumnSeries<Data, String>(
                    dataSource: <Data>[
                      Data('Necklace', 30),
                      Data('Anklets', 25),
                      Data('Earrings', 33),
                      Data('Armlet', 17),
                      Data('Nath', 28),
                    ],
                    xValueMapper: (Data data, _) => data.day,
                    yValueMapper: (Data data, _) => data.value,
                    color: AppColors.buttoncolour,
                    width: 0.3,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
              ],
            ),
            sizedBoxHeight(50.h),
            DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                        dividerColor: AppColors.secondary,
                        indicatorColor: AppColors.buttoncolour,
                        indicatorPadding:
                            EdgeInsets.symmetric(horizontal: 16.w),
                        indicatorWeight: 3,
                        labelStyle: TextStyle(
                            fontSize: 15.sp,
                            color: const Color(0xff373434),
                            fontWeight: FontWeight.w700),
                        unselectedLabelStyle: TextStyle(
                            fontSize: 15.sp,
                            color: const Color(0xff373434),
                            fontWeight: FontWeight.w400),
                        labelColor: AppColors.black,
                        labelPadding: EdgeInsets.symmetric(vertical: 5.h),
                        tabs: const [
                          Text('Top Rated'),
                          Text('Popular'),
                        ]),
                    SizedBox(
                      height: 600.h,
                      child: TabBarView(children: [
                        topRated(),
                        popular(),
                      ]),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget topRated() {
    return Column(
      children: [
        rowWidgetTop(1, 'Necklace', '₹ 10000'),
        rowWidgetTop(4, 'Earrings', '₹ 10000'),
        rowWidgetTop(2, 'Earrings', '₹ 10000'),
      ],
    );
  }

   Widget rowWidgetTop(int image, String title, String amount) {
    return Column(
      children: [
        sizedBoxHeight(20.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/order$image.png',
                    width: 64.w, height: 58.w, fit: BoxFit.fill),
                sizedBoxWidth(17.w),
                Column(
                  children: [
                    text373434_15w400(title),
                    sizedBoxHeight(5.h),
                    text373434_15w400(amount)
                  ],
                )
              ],
            ),
            Column(
              children: [
                SvgPicture.asset('assets/images/SVG/stars.svg'),
                sizedBoxHeight(5.h),
                text373737_12w400('(4.5)  120 Reviews'),
              ],
            )
          ],
        ),
        sizedBoxHeight(18.h),
        const Divider()
      ],
    );
  }

    Widget popular() {
    return Column(
      children: [
        rowWidgetPopular(1, 'Necklace', '₹ 10000'),
        rowWidgetPopular(4, 'Earrings', '₹ 10000'),
        rowWidgetPopular(2, 'Earrings', '₹ 10000'),
      ],
    );
  }

   Widget rowWidgetPopular(int image, String title, String amount) {
    return Column(
      children: [
        sizedBoxHeight(20.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/order$image.png',
                width: 64.w, height: 58.w, fit: BoxFit.fill),
            sizedBoxWidth(17.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text373434_15w400(title),
                text999999_15w400('Lorem ipsum dolor sit amet'),
                text373434_15w400(amount)
              ],
            )
          ],
        ),
        sizedBoxHeight(12.h),
        const Divider()
      ],
    );
  }



}