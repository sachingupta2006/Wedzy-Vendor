import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';

import '../../Utils/themedata.dart';


class OrderCancellation extends StatelessWidget {
  const OrderCancellation({super.key});

  @override
  Widget build(BuildContext context) {
    RxString itemValue = 'Unavailability of product'.obs;
    return Scaffold(
      appBar: CustomAppBarDynamic(titleTxt: 'Orders',preferredSize: Size.fromHeight(50),),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(18.w),
        child: CustomButton(
          text: 'Submit',
          onTap: () {
            sumbitAlert(context);
          },
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textBlack18w400('Order Cancellation'),
            sizedBoxHeight(24.h),
            text373434_15w400('Submit reason of cancellation'),
            sizedBoxHeight(8.h),
            Obx(() => Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  color: const Color(0xffFEF3F8),
                  child: DropdownButton<String>(
                    borderRadius: BorderRadius.circular(5),
                    underline: Container(),
                    isExpanded: true,
                    value: itemValue.value,
                    items: const [
                      DropdownMenuItem<String>(
                        value: 'Unavailability of product',
                        child: Text('Unavailability of product'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'other',
                        child: Text('Other'),
                      ),
                    ],
                    onChanged: (String? value) {
                      itemValue.value = value!;
                    },
                  ),
                ))
          ],
        ),
      )),
    );
  }

  sumbitAlert(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              textBlack18w400Center('Do You Want To Cancel The Order?'),
              sizedBoxHeight(10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 35.h,
                      width: MediaQuery.of(context).size.width / 3.5,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: Colors.transparent,
                                content: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Lottie.asset(
                                          height: 64.h,
                                          'assets/json/deliveryCancellation.json'),
                                      textBlack18w400Center(
                                          'Your Order Has Been Cancelled'),
                                      sizedBoxHeight(25.h)
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 6.h),
                          decoration: BoxDecoration(
                              color: AppColors.buttoncolour,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              border:
                                  Border.all(color: AppColors.buttoncolour)),
                          child: Center(child: textWhite15w700('Yes')),
                        ),
                      )),
                  sizedBoxWidth(10.w),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                      Get.back();
                    },
                    child: SizedBox(
                        height: 35.h,
                        width: MediaQuery.of(context).size.width / 3.5,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 6.h),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              border:
                                  Border.all(color: AppColors.buttoncolour)),
                          child: Center(child: textRed15w400('No')),
                        )),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

