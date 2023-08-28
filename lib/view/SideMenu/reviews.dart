import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';

import '../../Utils/themedata.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  bool showingAdditionalDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
          titleTxt: 'Reviews', preferredSize: const Size.fromHeight(50)),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(child: text373434_15w400('Customer Reviews')),
              sizedBoxHeight(15.h),
              Center(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFE3F0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star,
                          color: const Color(0xffFDCA49), size: 22.h),
                      Icon(Icons.star,
                          color: const Color(0xffFDCA49), size: 22.h),
                      Icon(Icons.star,
                          color: const Color(0xffFDCA49), size: 22.h),
                      Icon(Icons.star,
                          color: const Color(0xffFDCA49), size: 22.h),
                      Icon(Icons.star,
                          color: const Color(0xffFDCA49), size: 22.h),
                      sizedBoxWidth(20.w),
                      text373737_12w400('4.7 out of 5')
                    ],
                  ),
                ),
              ),
              sizedBoxHeight(5.h),
              Center(child: text373434_15w400('40 Customer Ratings')),
              sizedBoxHeight(45.h),
              customReviewRow(0.84, 5),
              customReviewRow(0.10, 4),
              customReviewRow(0.04, 3),
              customReviewRow(0.02, 2),
              customReviewRow(0.01, 1),
              sizedBoxHeight(20.h),
              Row(
                children: [
                  CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/images/profile.png')),
                  sizedBoxWidth(5.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text373434_15w400('Aakash Surve'),
                      Row(
                        children: [
                          Icon(Icons.star,
                              color: const Color(0xffFDCA49), size: 11.h),
                          sizedBoxWidth(3.w),
                          text373737_12w400('4.5')
                        ],
                      ),
                    ],
                  )
                ],
              ),
              sizedBoxHeight(12.h),
              text373434_15w400(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in '),
              showingAdditionalDetails?
              sizedBoxHeight(15.h):
              sizedBoxHeight(5.h),
              Visibility(
                visible: showingAdditionalDetails,
                child: Column(
                  children: [
                    Row(
                children: [
                  CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/images/profile.png')),
                  sizedBoxWidth(5.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text373434_15w400('Aakash Surve'),
                      Row(
                        children: [
                          Icon(Icons.star,
                              color: const Color(0xffFDCA49), size: 11.h),
                          sizedBoxWidth(3.w),
                          text373737_12w400('4.5')
                        ],
                      ),
                    ],
                  )
                ],
              ),
              sizedBoxHeight(12.h),
              text373434_15w400(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in '),
              sizedBoxHeight(15.h),
              
              Row(
                children: [
                  CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/images/profile.png')),
                  sizedBoxWidth(5.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text373434_15w400('Aakash Surve'),
                      Row(
                        children: [
                          Icon(Icons.star,
                              color: const Color(0xffFDCA49), size: 11.h),
                          sizedBoxWidth(3.w),
                          text373737_12w400('4.5')
                        ],
                      ),
                    ],
                  )
                ],
              ),
              sizedBoxHeight(12.h),
              text373434_15w400(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in '),
              sizedBoxHeight(5.h),
                  ],
                )
                ),
              GestureDetector(
                onTap: () {
                   setState(() {
                                    showingAdditionalDetails =
                                        !showingAdditionalDetails;
                                  });
                },
                child: Text(
                 showingAdditionalDetails ?

                  
                   'See less':
                    'See all',
                  style: TextStyle(
                    color: const Color(0xFF373434),
                    fontSize: 12.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              sizedBoxHeight(35.h),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 11.h),
                  decoration: const ShapeDecoration(
                    color: Color(0xFFEF2B7B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.rate_review_outlined,
                          color: AppColors.white, size: 24.w),
                      sizedBoxWidth(8.w),
                      InkWell(
                          onTap: share,
                          child: textWhite15w700('Ask For A Review')),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget customReviewRow(double percent, int rating) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: const Color(0xffFDCA49), size: 17.h),
            sizedBoxWidth(5.w),
            text373434_15w400('$rating'),
            sizedBoxWidth(8.w),
            Flexible(
              child: LinearPercentIndicator(
                padding: EdgeInsets.zero,
                barRadius: const Radius.circular(100),
                percent: percent,
                progressColor: AppColors.buttoncolour,
                lineHeight: 14.h,
                backgroundColor: const Color(0xffFFE3F0),
              ),
            ),
            sizedBoxWidth(10.w),
            text373434_15w400('${(percent * 100).toInt()}%')
          ],
        ),
        sizedBoxHeight(30.h),
      ],
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
