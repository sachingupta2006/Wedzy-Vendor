// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/themedata.dart';

class Appbarservices extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  Appbarservices({
    Key? key,
    required this.titleTxt,
    this.col,
  }) : super(key: key);

  final String titleTxt;
  final Color? col;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        flexibleSpace: Container(
          height: 50,
          decoration: const BoxDecoration(),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            titleTxt,
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.spMin,
              fontFamily: 'AvenirNextCyr',
              fontWeight: FontWeight.w700,
              color: col ?? Color(0xFF373434),
            ),
          ),
        ),
        leadingWidth: 48.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 13.w, right: 4.w),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 6.w),
              child: Container(
                decoration: ShapeDecoration(
                  color: Color(0xFFFEF3F8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 0.w),
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColors.buttoncolour,
                      size: 25.h,
                      //  color: AppColors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
