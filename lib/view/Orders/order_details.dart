import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_appbar.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/view/Orders/orders.dart';

import '../../Utils/Common/colors.dart';
import '../../Utils/themedata.dart';
import 'order_cancellation.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: 'Order Details',
        preferredSize: Size.fromHeight(50),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHeight(10.h),
              containerWidget(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sizedBoxHeight(12.h),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffFFE7F2),
                          borderRadius: BorderRadius.circular(18)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 27.w, vertical: 6.h),
                      child: textBlack15w400('Customer Details'),
                    ),
                    sizedBoxHeight(13.h),
                    Row(
                      children: [
                        CircleAvatar(
                            child: Image.asset('assets/images/profile.png')),
                        sizedBoxWidth(11.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textBlack15w400('Mokshada Kesarkar'),
                            textBlack15w400('9875487962'),
                          ],
                        ),
                      ],
                    ),
                    sizedBoxHeight(7.h),
                    textBlack15w400('Ph no. 7845124587'),
                    textBlack15w400('Email: mokshadakesarkar@gmail.com'),
                    sizedBoxHeight(15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        buttonContainer(
                            'Call', Icons.phone_outlined, context, 'Mokshada'),
                        sizedBoxWidth(9.w),
                        buttonContainer(
                            'Email', Icons.email_outlined, context, 'Mokshada'),
                      ],
                    ),
                    sizedBoxHeight(18.h),
                  ],
                ),
              ),
              sizedBoxHeight(10.h),
              containerWidget(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxHeight(12.h),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffFFE7F2),
                        borderRadius: BorderRadius.circular(18)),
                    padding:
                        EdgeInsets.symmetric(horizontal: 27.w, vertical: 6.h),
                    child: textBlack15w400('Captain Details'),
                  ),
                  sizedBoxHeight(13.h),
                  Row(
                    children: [
                      CircleAvatar(
                          child: Image.asset('assets/images/profile.png')),
                      sizedBoxWidth(11.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textBlack15w400('Afrid Mulla'),
                          textBlack15w400('9875487962'),
                        ],
                      ),
                    ],
                  ),
                  sizedBoxHeight(7.h),
                  textBlack15w400('Ph no. 7845124587'),
                  textBlack15w400('Email: afridmulla@gmail.com'),
                  sizedBoxHeight(15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      textBlack18w400(
                                          'Request sent to the admin'),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: buttonContainer('Call', Icons.phone_outlined,
                              context, 'Afrid Mulla')),
                      sizedBoxWidth(9.w),
                      buttonContainer('Email', Icons.email_outlined, context,
                          'Afrid Mulla'),
                    ],
                  ),
                  sizedBoxHeight(18.h),
                ],
              )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sizedBoxHeight(33.h),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffFFE7F2),
                          borderRadius: BorderRadius.circular(18)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 27.w, vertical: 6.h),
                      child: textBlack15w400('Order Details'),
                    ),
                    sizedBoxHeight(18.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/order1.png',
                          height: 116.h,
                          fit: BoxFit.fill,
                        ),
                        sizedBoxWidth(15.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBoxHeight(15.h),
                            Row(children: [
                              textGrey15w400('Products : '),
                              textBlack15w400('Necklase')
                            ]),
                            sizedBoxHeight(12.h),
                            Row(children: [
                              textGrey15w400('Order ID : '),
                              textBlack15w400('#1023566'),
                            ]),
                            sizedBoxHeight(12.h),
                            Row(
                              children: [
                                textGrey15w400('Order Date : '),
                                textBlack15w400('05 May 2023'),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    sizedBoxHeight(27.h),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 18.h),
                        textGrey15w400(' Delivered at 14 june 3.40 am')
                      ],
                    ),
                    sizedBoxHeight(8.h),
                    textBlack15w400(
                        'Mokshada kesarkar \nB-129 chawre avenue \nstation road, malad west \nmumbai'),
                    sizedBoxHeight(12.h),
                    textBlack15w700('Order Amount'),
                    textBlack15w700('₹ 1130'),
                    sizedBoxHeight(17.h),
                    textBlack15w700('Delivery type'),
                    sizedBoxHeight(5.h),
                    textBlack15w400('Express delivery'),
                    sizedBoxHeight(32.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 30,
                            child: CustomButton(
                              text: 'Accept',
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return acceptOrderAlertDialogue(context);
                                  },
                                );
                              },
                            )),
                        SizedBox(
                            height: 50.h,
                            width: MediaQuery.of(context).size.width / 2 - 30,
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => const OrderCancellation());
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 6.h),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    border: Border.all(
                                        color: AppColors.buttoncolour)),
                                child: Center(child: textRed15w400('Cancel')),
                              ),
                            )),
                      ],
                    ),
                    sizedBoxHeight(32.h),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AlertDialog acceptOrderAlertDialogue(context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          textBlack18w400Center('Do You Want To Accept The Order?'),
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
                          // Timer(duration, () { })
                          Timer(const Duration(seconds: 3), () {
                            // Get.offAndToNamed("/onboarding");
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Orders(
                                selectedpage: 2,
                              )));
                          });
                          return AlertDialog(
                            backgroundColor: Colors.transparent,
                            content: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/SVG/requestSend.svg'),
                                  textBlack18w400Center(
                                      'Your Order Has Been Confirmed Successfully!'),
                                  sizedBoxHeight(25.h)
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 6.h),
                      decoration: BoxDecoration(
                          color: AppColors.buttoncolour,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          border: Border.all(color: AppColors.buttoncolour)),
                      child: Center(child: textWhite15w700('Yes')),
                    ),
                  )),
              sizedBoxWidth(10.w),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SizedBox(
                    height: 35.h,
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 6.h),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          border: Border.all(color: AppColors.buttoncolour)),
                      child: Center(child: textRed15w400('No')),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buttonContainer(String txt, IconData icon, context, String name) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  textBlack18w400Center('Do You Want To $txt $name ?'),
                  sizedBoxHeight(10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 35.h,
                          width: MediaQuery.of(context).size.width / 3.5,
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
                          )),
                      sizedBoxWidth(10.w),
                      SizedBox(
                          height: 35.h,
                          width: MediaQuery.of(context).size.width / 3.5,
                          child: GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 6.h),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  border: Border.all(
                                      color: AppColors.buttoncolour)),
                              child: Center(child: textRed15w400('No')),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6.h),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            border: Border.all(color: AppColors.buttoncolour)),
        child: Row(
          children: [
            Icon(icon, size: 15.h, color: const Color(0xFFEF2B7B)),
            sizedBoxWidth(5.w),
            textRed15w400(txt),
          ],
        ),
      ),
    );
  }

  Widget containerWidget(Widget widget) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0x68EE3764),
            spreadRadius: 0,
            offset: Offset(-3.w, 0),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: widget,
    );
  }
}
