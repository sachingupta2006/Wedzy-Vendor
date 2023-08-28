import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_appbar.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';

class Already_user extends StatefulWidget {
  const Already_user({super.key});

  @override
  State<Already_user> createState() => _Already_userState();
}

class _Already_userState extends State<Already_user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: 'Products',
        preferredSize: Size.fromHeight(50),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              sizedBoxHeight(35.h),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/view_my_product');
                },
                child: product(
                  text: 'View My Products',
                ),
              ),
              sizedBoxHeight(25.h),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/add_product');
                },
                child: product(
                  text: 'Add New Products',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class product extends StatelessWidget {
  const product({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text as String,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 18,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.18,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 38,
                    height: 35,
                    decoration: ShapeDecoration(
                      color: Color(0xffFEF3F8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child:
                          SvgPicture.asset('assets/images/chevron-right.svg'),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
