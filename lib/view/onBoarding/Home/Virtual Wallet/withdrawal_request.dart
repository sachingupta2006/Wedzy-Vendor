import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/CustomFormContainer.dart';
import 'package:wedzy/Utils/Common/custom_appbar.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';
import '../../../../Utils/Common/colors.dart';
import 'withdrawal_history.dart';

class WithdrawalRequest extends StatelessWidget {
  const WithdrawalRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
          titleTxt: '', preferredSize: const Size.fromHeight(50)),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
        child: CustomButton(
          text: 'Send Request',
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset('assets/images/SVG/requestSend.svg'),
                      textBlack18w400('Request sent to the admin'),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textBlack18w400('Reethik Thota'),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const WithdrawalHistory());
                      },
                      child: Container(
                        padding: EdgeInsets.all(5.h),
                        decoration: BoxDecoration(
                            color: const Color(0xFFFEF3F8),
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.access_time,
                          color: AppColors.buttoncolour,
                          size: 24.h,
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxHeight(27.h),
                textBlack15w400('Wallet Balance'),
                textPrimary22W700('₹ 1,20,000'),
                sizedBoxHeight(58.h),
                textBlack15w400('Enter withdrawal amount'),
                sizedBoxHeight(8.h),
                CustomFormContainer(
                  leadingImage: 'assets/images/SVG/rupee.svg',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
