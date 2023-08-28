import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';

import '../../Utils/Common/custom_button.dart';
import '../../Utils/Common/sized_box.dart';
import '../../Utils/Common/texts.dart';
import '../../Utils/themedata.dart';

class LiveOrderDetails extends StatelessWidget {
  const LiveOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(titleTxt: 'Order Details',preferredSize: Size.fromHeight(50),),
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
              sizedBoxHeight(15.h),
              priceDetails(),
              sizedBoxHeight(15.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                padding: EdgeInsets.symmetric(horizontal: 2.w),
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
                        'Mokshada kesarkar \nB-129 chawre avenue \nstation road, malad west mumbai'),
                    sizedBoxHeight(25.h),
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
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return cancelOrderAlertDialogue(context);
                                  },
                                );
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

  AlertDialog cancelOrderAlertDialogue(context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          textBlack18w400Center(
              'Are You Sure You Want To Delete The Employee?'),
          sizedBoxHeight(20.h),
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
                                  sizedBoxHeight(15.h),
                                  const CircleAvatar(
                                      radius: 24,
                                      backgroundColor: Colors.red,
                                      child: Icon(Icons.delete_outline)),
                                  sizedBoxHeight(10.h),
                                  textBlack18w400Center(
                                      'Your Employee Has Been Deleted Successfully!'),
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

  Widget priceDetails() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        padding: EdgeInsets.only(left: 16.w),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(15.h),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffFFE7F2),
                  borderRadius: BorderRadius.circular(18)),
              padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 6.h),
              child: textBlack15w400('Order Details'),
            ),
            sizedBoxHeight(18.h),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text373434_15w400('Actual Price'),
                  textBlack15w400('₹ 1200')
                ],
              ),
            ),
            sizedBoxHeight(30.h),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text373434_15w400('Discounted Price'),
                  textBlack15w400('₹ 120')
                ],
              ),
            ),
            sizedBoxHeight(22.h),
            FDottedLine(
              color: const Color(0xFFEE3764),
              width: double.infinity,
              strokeWidth: 0.5,
              dottedLength: 4.0,
              space: 2.0,
            ),
            sizedBoxHeight(7.h),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text373434_15w400('Final Price'),
                  textBlack15w700('₹ 1080')
                ],
              ),
            ),
            sizedBoxHeight(50.h),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text373434_15w400('Product Amount(1 Item)'),
                  textBlack15w400('₹ 1080')
                ],
              ),
            ),
            sizedBoxHeight(27.h),
            Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text373434_15w400('Shipping Amount'),
                      textBlack15w400('₹ 50')
                    ])),
            sizedBoxHeight(22.h),
            FDottedLine(
                color: const Color(0xFFEE3764),
                width: double.infinity,
                strokeWidth: 0.5,
                dottedLength: 4.0,
                space: 2.0),
            sizedBoxHeight(15.h),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textBlack15w700('Order Amount'),
                  textBlack15w700('₹ 1130')
                ],
              ),
            ),
            sizedBoxHeight(27.h),
            Container(
              width: double.infinity,
              color: AppColors.buttoncolour,
              height: 0.5.w,
            ),
            sizedBoxHeight(15.h),
            text373434_15w400('Payment Gateway'),
            sizedBoxHeight(15.h),
            textBlack15w400('UPI'),
            sizedBoxHeight(20.h),
            textBlack15w700('Transaction ID'),
            sizedBoxHeight(15.h),
            textBlack15w400('6Tgf457514'),
            sizedBoxHeight(25.h),
          ],
        ));
  }
}
