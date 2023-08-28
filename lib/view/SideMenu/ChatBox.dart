import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:wedzy/Utils/themedata.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({super.key});

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  final _messageController = TextEditingController();
  int chatItems = 5;
  List<String> messages = ["Hi", "How are you?", "I am Good", "How are you?"];
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
  _chatItemsAdd() {
    setState(() {
      chatItems + 1;
      messages.add(_messageController.text);
    });
  }

  @override
  void initState() {
    super.initState();
    calendarController.view = _view;
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

  @override
  Widget build(BuildContext context) {
    final Widget calendar = _getAppointmentEditorCalendar(
      calendarController,
      MeetingDataSource(_getDataSource()),
      _onCalendarTapped,
      _onViewChanged,
    );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          flexibleSpace: Container(
            height: 100,
            decoration: const BoxDecoration(
                // color: Colors.amber,
                ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFFEF2B7B),
            ),
            iconSize: 22.spMin,
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 25,
                child: Image.asset(
                  "assets/images/secondChatImage.png",
                  fit: BoxFit.fill,
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                    top: 10), // Adjust the left padding value as needed
                child: Text(
                  'Chaitali Tatkare',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF373434),
                      ),
                ),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit......',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF9B9B9B),
                    ),
              ),
              trailing: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () => _openModalBottomSheet(context),
                    child: Container(
                      width: 47,
                      height: 47,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFFEF2B7B),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13),
                        child: SvgPicture.asset(
                          "assets/images/calendar.svg",
                        ),
                      ),
                    ),
                  )),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: ListView.builder(
              // shrinkWrap: true,
              //  reverse: true,
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                if (index < 2) {
                  return LeftChatMessage(index, messages);
                } else {
                  return RightChatMessage(index, messages);
                }
              },
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 81,
              height: 29,
              decoration: ShapeDecoration(
                color: const Color(0x9BFFE3F0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.50),
                ),
              ),
              child: const Center(child: Text("Today")),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  top: 16.h, left: 5.w, right: 5.w, bottom: 8.h),
              child: TextFormField(
                controller: _messageController,
                decoration: InputDecoration(
                  hintText: 'Type a message',
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(top: 14.h),
                    child: InkWell(
                      onTap: () => _chatItemsAdd(),
                      child: Text(
                        "Send",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 1, top: 1),
                    child: Transform.scale(
                      scale: 0.5,
                      child: SvgPicture.asset(
                        "assets/images/paperclip.svg",
                        width: 18,
                        height: 18,
                      ),
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: const BorderSide(
                      color: Color(0xFFEE3764),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: const BorderSide(
                      color: Color(0xFFEE3764),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget LeftChatMessage(index, msg) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 8,
      children: [
        Container(
          constraints: const BoxConstraints(
              // maxWidth: 100,
              ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Color(0xFFFCD9E2),
          ),
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            msg[index],
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget RightChatMessage(index, msg) {
    return Wrap(
      alignment: WrapAlignment.end,
      spacing: 8,
      children: [
        Container(
          constraints: const BoxConstraints(
              // maxWidth: 100,
              ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            color: Color(0xFFFCD9E2),
          ),
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            msg[index],
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
