import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/view/onBoarding/Home/signature.dart';
import 'package:wedzy/view/onBoarding/Home/tax_details.dart';

import 'bank_account_details.dart';

class MyShop extends StatelessWidget {
  const MyShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
          titleTxt: 'My Shop', preferredSize: const Size.fromHeight(50)),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              completed('Personal Details'),
              completed('ID Proof'),
              completed('Store'),
              inCompleted('Tax Details', route: const TaxDetails()),
              // inCompleted('Shipping fee details'),
              inCompleted('Bank Account details',
                  route: const BankAccountDetails()),
              // inCompleted('Product Tax code'),
              inCompleted('Signature', route: const Signature()),
            ],
          ),
        ),
      ),
    );
  }

  Widget completed(String txt) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 7.w),
          width: double.infinity,
          height: 68,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            shadows: const [
              BoxShadow(
                  color: Color(0x3F000000), blurRadius: 4, offset: Offset(0, 1))
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text373434_15w400(txt),
                  sizedBoxHeight(5.h),
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/SVG/completed.svg'),
                      sizedBoxWidth(3.w),
                      textGreen15w400('Completed'),
                    ],
                  )
                ],
              ),
              // RotatedBox(
              //   quarterTurns: 3,
              //   child: Container(
              //     padding: EdgeInsets.fromLTRB(6.w, 6.h, 6.w, 6.h),
              //     decoration: ShapeDecoration(
              //       color: const Color(0xFFFEF3F8),
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(5)),
              //     ),
              //     child: SvgPicture.asset('assets/images/SVG/downArrow.svg'),
              //   ),
              // ),
            ],
          ),
        ),
        sizedBoxHeight(15.h)
      ],
    );
  }

  Widget inCompleted(String txt, {Widget? route}) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
                  route == null ? null : Get.to(() => route);
                },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            width: double.infinity,
            height: 68,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              shadows: const [
                BoxShadow(
                    color: Color(0x3F000000), blurRadius: 4, offset: Offset(0, 1))
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text373434_15w400(txt),
                // GestureDetector(
                //   onTap: () {
                //     route == null ? null : Get.to(() => route);
                //   },
                //   child:
                   RotatedBox(
                    quarterTurns: 3,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(6.w, 6.h, 6.w, 6.h),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFEF3F8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: SvgPicture.asset('assets/images/SVG/downArrow.svg'),
                    ),
                  ),
                // ),
              ],
            ),
          ),
        ),
        sizedBoxHeight(15.h)
      ],
    );
  }
}
