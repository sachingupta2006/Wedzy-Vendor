import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/CustomDesignButton.dart';
import 'package:wedzy/Utils/Common/CustomFormContainer.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/themedata.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: CustomButton(text: 'text'),
      extendBody: true,
      appBar: CustomAppBarDynamic(
        backArrow: false,
        preferredSize: Size.fromHeight(50),
        titleTxt: "Profile",
      ),
      body: SingleChildScrollView(
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.white,
                    radius: 60.h,
                    child: Image.asset('assets/images/profileBig.png',
                        fit: BoxFit.fill),
                  ),
                  Positioned(
                      bottom: 4.h,
                      right: 4.h,
                      child: CircleAvatar(
                        radius: 14.h,
                        backgroundColor: AppColors.buttoncolour,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: AppColors.white,
                          size: 15.h,
                        ),
                      ))
                ],
              )
                  //  Container(
                  //   width: 122,
                  //   height: 122,
                  //   decoration: const ShapeDecoration(
                  //     image: DecorationImage(
                  //       image:
                  //           NetworkImage("https://via.placeholder.com/122x122"),
                  //       fit: BoxFit.fill,
                  //     ),
                  //     shape: OvalBorder(),
                  //   ),
                  // ),
                  ),
              const SizedBox(height: 7),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Kishan Bhuta",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      "RB Studios photography",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: const Color(0xFF707070),
                              fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              CustomFormContainer(
                hintText: "Enter Name",
                leadingImage: "assets/images/user.svg",
                trailingImage: "assets/images/edit-2.svg",
              ),
              SizedBox(height: 23.h),
              CustomFormContainer(
                hintText: "Enter email address",
                leadingImage: "assets/images/mail.svg",
              ),
              SizedBox(height: 23.h),
              CustomFormContainer(
                hintText: "Enter mobile number",
                leadingImage: "assets/images/smartphone.svg",
              txtinptype: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
                FilteringTextInputFormatter.allow(RegExp('[0-9]')),
              ],        
              ),
              SizedBox(height: 34.h),
              Text(
                'Link your social media accounts',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 14.h),
              CustomFormContainer(
                hintText: "Instagram Link",
                leadingImage: "assets/images/Instagram.png",
                usingPng: true,
              ),
              SizedBox(height: 23.h),
              CustomFormContainer(
                hintText: "Instagram Link",
                leadingImage: "assets/images/facebook-svgrepo-com 1.png",
                usingPng: true,
              ),
              SizedBox(height: 34.h),
              Text(
                'Share App',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.black),
              ),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.only(bottom: 7.h),
                width: double.infinity,
                // height: 113.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF05E90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12, top: 6),
                          child: SizedBox(
                            width: 180.w,
                            child: Text(
                              'Invite your fellow vendors to wedzy business ',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 18.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: InkWell(
                            onTap: share,
                            child: Container(
                              width: 93.w,
                              height: 33.h,
                              decoration: const ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                "Share",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFFEF2B7B),
                                    ),
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                        // width: 153,
                        // height: 119,
                        child: SvgPicture.asset(
                            "assets/images/profileImage1.svg",
                            width: 140.w,
                            height: 107.h,
                            fit: BoxFit.fill)),
                  ],
                ),
              ),
              SizedBox(height: 48.h),
              CustomDesignButton(
                  onPressed: () {
                    // Get.to(() => const TempororyHomeRoute());
                    // on save
                  },
                  text: "Save"),
              SizedBox(height: 110.h)
            ],
          ),
        ),
      ),
    );
  }

  Future<void> share() async {
    await FlutterShare.share(
      title: 'Example share',
      // text: 'Example share text',
      linkUrl: 'https://Wedzy.com/',
      // chooserTitle: 'Example Chooser Title'
    );
  }
}
