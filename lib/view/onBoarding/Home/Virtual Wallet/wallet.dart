import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';
import 'package:wedzy/view/onBoarding/Home/Virtual%20Wallet/transaction_details.dart';
import 'package:wedzy/view/onBoarding/Home/Virtual%20Wallet/withdrawal_request.dart';
import '../../../../Utils/Common/colors.dart';
import '../../../../Utils/Common/custom_appbar.dart';
import 'payment_history.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              color: AppColors.buttoncolour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  sizedBoxHeight(10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back,
                              color: AppColors.white, size: 24.spMin),
                        ),
                        sizedBoxWidth(60.w),
                        Row(
                          children: [
                            CircleAvatar(
                                backgroundColor: AppColors.white,
                                radius: 22.5.r,
                                child: Image.asset(
                                  'assets/images/profile.png',
                                  fit: BoxFit.fill,
                                )),
                            sizedBoxWidth(9.w),
                            textWhite18w700('Reethik Thota'),
                          ],
                        ),
                        // GestureDetector(
                        //   onTap: () {
                        //     Get.to(() => const PaymentHistory());
                        //   },
                        //   child: Container(
                        //     padding: EdgeInsets.all(5.h),
                        //     decoration: BoxDecoration(
                        //         color: AppColors.white,
                        //         borderRadius: BorderRadius.circular(5)),
                        //     child: Icon(
                        //       Icons.access_time,
                        //       color: AppColors.buttoncolour,
                        //       size: 24.h,
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                  sizedBoxHeight(22.h),
                  textWhite18w700('Wallet Balance'),
                  sizedBoxHeight(7.h),
                  textWhite24w700('₹ 1,20,000'),
                  sizedBoxHeight(30.h),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const WithdrawalRequest());
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 12.h, horizontal: 30.w),
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: textPrimary15w700('Withdraw request')),
                  ),
                  sizedBoxHeight(29.h)
                ],
              ),
            ),
            Container(
              color: AppColors.buttoncolour,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sizedBoxHeight(10.h),
                      textBlack18w700('Pending Payments'),
                      const Divider(color: AppColors.buttoncolour),
                      sizedBoxHeight(5.h),
                      rowWidget('Jyoti Yadav', '10,00,00'),
                      rowWidget('Akanksha Surve', '20,00,00'),
                      rowWidget('Pooja Tambe', '15,00,00'),
                      rowWidget('Mayur Niak', '10,00,00'),
                      rowWidget('Mokshada Kesarkar', '10,00,00'),
                      rowWidget('Afrid Mulls', '30,00,00'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget rowWidget(String name, String amount) {
    return GestureDetector(
      onTap: () {
        Get.to(() => TransactionDetails(
              pendingTran: true,
            ));
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textBlack15w400(name),
                  textBlack15w400('23 May 2023, 11.30 am'),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/images/SVG/time.svg'),
                  sizedBoxWidth(14.w),
                  textBlack15w700('₹ $amount'),
                ],
              )
            ],
          ),
          sizedBoxHeight(38.h)
        ],
      ),
    );
  }
}
