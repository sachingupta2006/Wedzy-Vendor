import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/texts.dart';

Widget customAppBar(
    {required String text,
    bool inBottomSheet = false,
    bool actions = false,
    dynamic icon}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: inBottomSheet ? 0 : 16.w),
    child: Row(
      children: [
        Row(
          children: [
            InkWell(
                onTap: () {
                  Get.back();
                },
                child: SvgPicture.asset(
                  "assets/images/appbarbackarrow.svg",
                  width: 24.w,
                  height: 24.h,
                )),
            SizedBox(
              width: 15.w,
            ),
            inBottomSheet
                ? textBlack20W7000Mon(text)
                : textBlack20W7000Mon(text),
          ],
        ),
        Spacer(),
        actions ? icon : SizedBox(),
      ],
    ),
  );
}
