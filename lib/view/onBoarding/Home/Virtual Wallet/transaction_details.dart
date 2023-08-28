import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/colors.dart';
import 'package:wedzy/Utils/Common/custom_appbar.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({super.key, this.pendingTran});
  final bool? pendingTran;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
          titleTxt: 'Payment History',
          preferredSize: const Size.fromHeight(50)),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 65.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      sizedBoxHeight(35.h),
                      textBlack18w400('From Afrid Mulla'),
                      textBlack15w400('+91 82451 25465'),
                      sizedBoxHeight(15.h),
                      textBlack15w400('₹ 20,000'),
                      sizedBoxHeight(15.h),
                      pendingTran == null
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                    'assets/images/SVG/completed.svg'),
                                sizedBoxWidth(9.w),
                                textGreen15w400('Completed'),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/images/SVG/time.svg'),
                                sizedBoxWidth(9.w),
                                textPrimary15w400('Pending'),
                              ],
                            ),
                      sizedBoxHeight(11.h),
                      Divider(thickness: 0.5.h, color: AppColors.secondary),
                      sizedBoxHeight(14.h),
                      textBlack15w400('May 1, 2023 11:20 AM'),
                      sizedBoxHeight(20.h),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Container(
                  width: double.infinity,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 26.h),
                  // height: 330.h,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFEF3F8),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Color(0xFFFEF3F8)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                          color: Color(0x3F7B7B7B),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                          spreadRadius: 0)
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textBlack15w400('UPI transaction ID'),
                      textBlack15w400('82451 25465'),
                      sizedBoxHeight(25.h),
                      textBlack15w400('To: Reethik thota'),
                      textBlack15w400('9545784595'),
                      sizedBoxHeight(25.h),
                      textBlack15w400('From: AFRID MULLA'),
                      textBlack15w400('82451 25465'),
                      sizedBoxHeight(25.h),
                      textBlack15w400('Transaction ID'),
                      textBlack15w400('82451j_kh465'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
