import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: AppColors.buttoncolour,
        //   onPressed: () {},
        //   child: const Icon(Icons.add),
        // ),
        appBar: CustomAppBarDynamic(
          backArrow: false,
          titleTxt: 'Task',
          preferredSize: const Size.fromHeight(50),
          // customWidget: Container(
          //   decoration: ShapeDecoration(
          //     color: Colors.white,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(18),
          //     ),
          //     shadows: const [
          //       BoxShadow(
          //         color: Color(0x3F000000),
          //         blurRadius: 4,
          //         offset: Offset(0, 2),
          //       )
          //     ],
          //   ),
          //   child: ButtonsTabBar(
          //     buttonMargin: EdgeInsets.symmetric(horizontal: 0.w),
          //     contentPadding: EdgeInsets.symmetric(horizontal: 50.w),
          //     radius: 25,
          //     backgroundColor: const Color(0xFFEF2B7B),
          //     unselectedBorderColor: AppColors.transparent,
          //     borderWidth: 1,
          //     borderColor: const Color(0xFFFFFFFF),
          //     unselectedBackgroundColor: const Color(0xFFFFFFFF),
          //     unselectedLabelStyle: const TextStyle(color: Color(0xFFEF2B7B)),
          //     labelStyle: TextStyle(
          //       color: const Color(0xFFFFFFFF),
          //       fontWeight: FontWeight.w700,
          //       fontSize: 15.sp,
          //     ),
          //     tabs: const [
          //       Tab(text: "To Do's"),
          //       Tab(text: "Reminders"),
          //     ],
          //   ),
          // ),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: tab1(context)),
      ),
    );
  }

  Widget tab1(context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxHeight(24.h),
          text373434_15w400('Categories'),
          sizedBoxHeight(16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              categoryContainer(context, 10, 'Business', 0.5),
              categoryContainer(context, 5, 'Personal', 0.7),
            ],
          ),
          sizedBoxHeight(20.h),
          text373434_15w400("Today's Task"),
          sizedBoxHeight(16.h),
          taskRow('Assing A Task To Employee'),
          taskRow('Complete your details'),
          taskRow('Ask for a review'),
          taskRow('Meeting with the team'),
          taskRow('Check Inquiries'),
        ],
      ),
    );
  }

  Widget tab2() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxHeight(24.h),
          text373434_15w400('Upcoming'),
          sizedBoxHeight(16.h),
          reminderRow('05.00 PM'),
          Divider(
              color: AppColors.buttoncolour, thickness: 0.25.h, height: 40.h),
          reminderRow('07.00 PM'),
          Divider(
              color: AppColors.buttoncolour, thickness: 0.25.h, height: 40.h),
          reminderRow('08.00 PM'),
          Divider(
              color: AppColors.buttoncolour, thickness: 0.25.h, height: 40.h),
          reminderRow('10.00 PM'),
        ],
      ),
    );
  }

  Widget reminderRow(String txt) {
    var notificationOn = true.obs;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            textBlack15w400(txt),
            sizedBoxWidth(8.w),
            text707070_15w400('Meeting with the customer'),
          ],
        ),
        Obx(() => GestureDetector(
              onTap: () {
                notificationOn.value = !notificationOn.value;
              },
              child: notificationOn.value
                  ? Icon(Icons.notifications_outlined,
                      size: 21.h, color: AppColors.buttoncolour)
                  : Icon(Icons.notifications_off_outlined,
                      size: 21.h, color: AppColors.buttoncolour),
            ))
      ],
    );
  }

  Widget categoryContainer(context, int count, String txt, double percent) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 24.w,
      padding: EdgeInsets.only(left: 9.w, right: 21.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F717171),
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxHeight(15.h),
          textPrimary12w400('$count Task'),
          sizedBoxHeight(10.h),
          text373434_15w400(txt),
          sizedBoxHeight(15.h),
          LinearPercentIndicator(
            padding: EdgeInsets.zero,
            barRadius: const Radius.circular(100),
            percent: percent,
            progressColor: AppColors.buttoncolour,
            lineHeight: 4.h,
            backgroundColor: const Color(0xffFFE3F0),
          ),
          sizedBoxHeight(22.h),
        ],
      ),
    );
  }

  Widget taskRow(
    String txt,
  ) {
    RxBool completed = false.obs;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            completed.value = !completed.value;
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x3F717171),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Obx(() => Row(
                  children: [
                    Container(
                      width: 21.h,
                      height: 21.h,
                      decoration: ShapeDecoration(
                        color: completed.value
                            ? AppColors.buttoncolour
                            : AppColors.white,
                        shape: const OvalBorder(
                          side:
                              BorderSide(width: 0.8, color: Color(0xFFEE3764)),
                        ),
                      ),
                      child: Center(
                          child: Icon(
                        Icons.check_outlined,
                        size: 15.h,
                        color: AppColors.white,
                      )),
                    ),
                    sizedBoxWidth(16.w),
                    Text(
                      txt,
                      style: TextStyle(
                          decoration: completed.value
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                          fontSize: 15.sp,
                          color: const Color(0xff373434),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
          ),
        ),
        sizedBoxHeight(15.h)
      ],
    );
  }
}
