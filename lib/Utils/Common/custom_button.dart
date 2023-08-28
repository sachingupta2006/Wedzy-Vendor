import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

Widget CustomButton({void Function()? onTap, required String text}) {
  return InkWell(
      onTap: onTap,
      child: Container(
        width: 328.w,
        height: 50.h,
        decoration: ShapeDecoration(
          color: Color(0xFFEF2B7B),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
              fontFamily: 'AvenirNextCyr',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ));
}
