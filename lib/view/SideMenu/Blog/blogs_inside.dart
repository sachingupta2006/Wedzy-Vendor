import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';

import '../../../Utils/Common/CustomAppBarDynamic.dart';

class BlogsInside extends StatelessWidget {
  final String imgAddress;

  const BlogsInside({super.key, required this.imgAddress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: 'Blogs',
        preferredSize: const Size.fromHeight(50),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imgAddress,
                  fit: BoxFit.fill,
                  height: 300.h,
                  width: double.infinity,
                ),
              ),
              sizedBoxHeight(25.h),
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.white,
                      radius: 25.h,
                      child: Image.asset('assets/images/profile.png',
                          fit: BoxFit.cover)),
                  sizedBoxWidth(11.w),
                  Column(
                    children: [
                      text373434_15w400('Jaison Derula'),
                      text999999_15w400('10 June 2023'),
                    ],
                  ),
                ],
              ),
              text373434_18w700(
                  'Lorem ipsum dolor sit amet, elit consectetur adipiscing elit. '),
              sizedBoxHeight(20.h),
              textBlack15w400(
                  '''    commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla velit pariatur. Excepteur sint occaecat velit cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''')
            ],
          ),
        ),
      ),
    );
  }
}
