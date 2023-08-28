import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';
import 'package:wedzy/resources/routes/route_name.dart';
import 'package:wedzy/view/SideMenu/Blog/blogs.dart';
import 'package:wedzy/view/SideMenu/reviews.dart';
import '../../SideMenu/Policy.dart';
import '../../SideMenu/Request/requestmain.dart';
import '../../SideMenu/calender.dart';

class NavDrawer extends StatelessWidget {
   NavDrawer({super.key, required this.requestIndex});
  int requestIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.buttoncolour,
              spreadRadius: 0,
              offset: Offset(7, 0),
            )
          ],
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), bottomRight: Radius.circular(40)),
        ),
        width: 240.w,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            sizedBoxHeight(30.h),
            Row(
              children: [
                sizedBoxWidth(16.w),
                GestureDetector(
                  onTap: () {
                    Get.back();
                    // Get.toNamed(RouteName.profileScreen);
                  },
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 35.h,
                        child: Image.asset(
                          'assets/images/profile71.png',
                          fit: BoxFit.cover,
                          height: 70.h,
                        ),
                      ),
                      // Positioned(
                      //   bottom: 0,
                      //   right: 0,
                      //   child: CircleAvatar(
                      //     backgroundColor: AppColors.buttoncolour,
                      //     radius: 10.h,
                      //     child: Icon(
                      //       Icons.edit_outlined,
                      //       size: 10.h,
                      //       color: AppColors.white,
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
                sizedBoxWidth(10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textBlack15w400('Reethik'),
                    textBlack15w400('9478567854'),
                  ],
                ),
              ],
            ),
            sizedBoxHeight(30.h),
            requestIndex == 0 ? const SizedBox() : iconTitle(Icons.notifications_outlined, 'Requests', onTap: () {
              Get.back();
              Get.to(() => const Requestmain());
            }),
            iconTitle(Icons.policy_outlined, 'Policy Standards', onTap: () {
              Get.back();
              Get.to(() => const Policy());
            }),
            iconTitle(
              Icons.calendar_month_outlined,
              'Calendar',
              onTap: () {
                Get.back();
                Get.to(() => const Calendar());
              },
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    iconTitle(Icons.sticky_note_2_outlined, 'Blogs', onTap: () {
                      Get.back();
                      Get.to(() => const Blogs());
                    }),
                    iconTitle(Icons.settings_outlined, 'Settings', onTap: () {
                      Get.back();
                      Get.toNamed(RouteName.settings);
                    }),
                  ],
                ),
                const Spacer(),
                centerRightContainer(),
              ],
            ),
            iconTitle(
              Icons.star_outline,
              'Reviews',
              onTap: () {
                Get.back();
                Get.to(() => const Reviews());
              },
            ),
            iconTitle(
              Icons.people_outline,
              'My Employees',
              onTap: () {
                Get.back();
                Get.toNamed(RouteName.employeelist);
              },
            ),
            const Divider(color: AppColors.buttoncolour, thickness: 0.1),
            sizedBoxHeight(30.h),
            iconTitle(
              Icons.logout_outlined,
              'Logout',
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          textBlack14w500('Are you sure you want to logout?'),
                          sizedBoxHeight(20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: text373434_14w500('Cancel')),
                              sizedBoxWidth(20.w),
                              InkWell(
                                  onTap: () {
                                    Get.back();
                                    Get.back();
                                    Get.toNamed(RouteName.onboarding);
                                  },
                                  child: textPrimary14w500('Logout')),
                            ],
                          ),
                          sizedBoxHeight(14.h),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget centerRightContainer() {
    return Container(
      width: 20.w,
      height: 70.h,
      decoration: const BoxDecoration(
          color: AppColors.buttoncolour,
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(150, 180),
            bottomLeft: Radius.elliptical(150, 180),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          sizedBoxWidth(4.w),
          Container(
            height: 30.h,
            width: 4.w,
            decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.circular(100))),
          ),
        ],
      ),
    );
  }

  Widget iconTitle(icon, String txt, {void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              sizedBoxWidth(16.w),
              Container(
                padding: EdgeInsets.all(7.h),
                decoration: ShapeDecoration(
                  color: const Color(0xFFFEF3F8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Center(
                  child: Icon(
                    icon,
                    color: AppColors.buttoncolour,
                    size: 16.h,
                  ),
                ),
              ),
              sizedBoxWidth(15.w),
              textBlack15w400(txt)
            ],
          ),
          sizedBoxHeight(30.h)
        ],
      ),
    );
  }
}
