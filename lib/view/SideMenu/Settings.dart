import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/resources/routes/route_name.dart';

import '../../Utils/Common/sized_box.dart';
import '../../Utils/Common/texts.dart';
import '../../Utils/themedata.dart';
import 'Settings/about_us.dart';
import 'Settings/privacy_policy.dart';
import 'Settings/terms_conditions.dart';
import 'Settings/faqs.dart';
import 'Settings/accounts.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        preferredSize: const Size.fromHeight(50),
        titleTxt: 'Settings',
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 18.h,
                  backgroundColor: const Color(0x42EE3764),
                  child: SvgPicture.asset(
                    "assets/images/bell.svg",
                    color: AppColors.buttoncolour,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  "Set up alert notifications",
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    "Order details and alerts",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                FlutterSwitch(
                  width: 50,
                  height: 25,
                  value: status,
                  toggleColor: const Color(0xFFEE3764),
                  activeColor: const Color(0xFFEE3764).withOpacity(0.5),
                  inactiveColor: const Color(0xFFFFE3F0),
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 29.h),
            const Divider(),
            SizedBox(height: 22.h),
            InkWell(
              splashColor: const Color(0xFFFFE3F0),
              onTap: () {
                Get.toNamed(RouteName.passwordAndSecurity);
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 18.h,
                    backgroundColor: const Color(0x42EE3764),
                    child: SvgPicture.asset(
                      "assets/images/lock.svg",
                      color: AppColors.buttoncolour,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Password & Security',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(7.h),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFEF3F8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child:
                          SvgPicture.asset("assets/images/chevron-right.svg"))
                ],
              ),
            ),
            SizedBox(height: 22.h),
            const Divider(),
            SizedBox(height: 22.h),
            iconTitle(Icons.person_outline, "Accounts", onTap: () {
              Get.to(() => const Accounts());
            }),
            iconTitle(Icons.question_mark, "FAQ's", onTap: () {
              Get.to(() => const Faqs());
            }),
            iconTitle(Icons.call_outlined, 'Contact Us', onTap: () {
              Get.toNamed(RouteName.contactUsScreen);
            }),
            iconTitle(Icons.emoji_emotions_outlined, 'Feedback', onTap: () {
              Get.toNamed(RouteName.feedback);
            }),
            iconTitle(Icons.question_mark, 'Terms & Conditions', onTap: () {
              Get.to(() => const TermsAndConditions());
            }),
            iconTitle(Icons.shield_outlined, 'Privacy Policy', onTap: () {
              Get.to(() => const PrivacyPolicy());
            }),
            iconTitle(Icons.warning_amber_rounded, 'About Us', onTap: () {
              Get.to(() => const AboutUs());
            }),
          ],
        ),
      ),
    );
  }

  Widget iconTitle(icon, String txt, {void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              // sizedBoxWidth(16.w),
              CircleAvatar(
                // padding: EdgeInsets.all(7.h),
                // color: const Color(0x42EE3764),
                radius: 18.h,
                backgroundColor: const Color(0x42EE3764),

                child: Center(
                  child: Icon(
                    icon,
                    color: AppColors.buttoncolour,
                    size: 18.h,
                  ),
                ),
              ),
              sizedBoxWidth(15.w),
              textBlack15w400(txt)
            ],
          ),
          sizedBoxHeight(25.h)
        ],
      ),
    );
  }
}
