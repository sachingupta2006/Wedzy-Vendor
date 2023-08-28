import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';

import '../../../../../Utils/Common/sized_box.dart';
import '../../../../../Utils/Common/texts.dart';
import '../../../../../Utils/themedata.dart';

class Product_preview extends StatelessWidget {
  const Product_preview({
    super.key,
  });

  buildcontentdeletedialog(context) {
      return showDialog(
        context: context,
        builder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              insetPadding: EdgeInsets.symmetric(horizontal: 16),
              backgroundColor:
                  Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
              contentPadding: EdgeInsets.fromLTRB(32, 35, 32, 28),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(
                    color: Get.isDarkMode ? Colors.grey : Color(0XFFFFFFFF)),
              ),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //sizedBoxHeight(32.h),

                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Are You Sure You Want \nDelete?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  sizedBoxHeight(30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 117.w,
                            height: 45.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFEF2B7B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Yes',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      sizedBoxWidth(28.w),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 117.w,
                            height: 45.h,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFFEF2B7B)),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'No',
                                  style: TextStyle(
                                    color: Color(0xFFEF2B7B),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }


  @override
  Widget build(BuildContext context) {
    var sliderPage = 0.obs;
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: 'Products',
        preferredSize: Size.fromHeight(50),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      buildcontentdeletedialog(context);
                    },
                    child: Container(
                      width: 80,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: Color(0x21EF2B7B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                      ),
                      child: Text(
                        'Delete',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFEF2B7B),
                          fontSize: 15,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(16.h),
              CarouselSlider.builder(
                  carouselController: CarouselController(),
                  itemCount: 4,
                  itemBuilder: (context, index, realIndex) {
                    return SizedBox(
                      width: 500,
                      height: 200,
                      child: Image.asset('assets/images/Rectangle6421.png',
                          fit: BoxFit.fill),
                    );
                  },
                  options: CarouselOptions(
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      sliderPage.value = index;
                    },
                  )),
              sizedBoxHeight(9.h),
              Obx(
                () => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 2.5.w),
                        height: 6.h,
                        width: sliderPage.value == index ? 12.w : 5.w,
                        decoration: BoxDecoration(
                            color: AppColors.buttoncolour,
                            borderRadius: BorderRadius.circular(25)),
                      );
                    })),
              ),
              sizedBoxHeight(20.h),
              Text(
                'Necklace',
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 18,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.18,
                ),
              ),
              sizedBoxHeight(10.h),
              Text(
                'Reethik Jewellers',
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 15,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.15,
                ),
              ),
              sizedBoxHeight(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Border_btn(
                    icons: 'assets/images/phone-call.svg',
                    text: 'Call',
                  ),
                  Border_btn(
                    icons: 'assets/images/mail.svg',
                    text: 'Message',
                  ),
                ],
              ),
              sizedBoxHeight(20.h),
              Text(
                'Description',
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 18,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.18,
                ),
              ),
              sizedBoxHeight(10.h),
              Text(
                'If you re looking for the perfect earrings to complete a specific look or just to add some flare to your everyday jewelry game or to elevate your office wardrobe.',
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 15,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.15,
                ),
              ),
              sizedBoxHeight(30.h),
              Text(
                'Pricing Info',
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 18,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.18,
                ),
              ),
              sizedBoxHeight(10.h),
              Text(
                '₹ 10,00,00',
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 15,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.15,
                ),
              ),
              sizedBoxHeight(60.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        border: Border.all(color: Color(0xffEF2B7B)),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Buy Now',
                            style: TextStyle(
                              color: Color(0xFFEE3764),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: 150.w,
                      child: InkWell(
                          onTap: () {},
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/heart.png'),
                                  sizedBoxWidth(10.w),
                                  Text(
                                    'Wishlist',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontFamily: 'AvenirNextCyr',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )))
                ],
              ),
              sizedBoxHeight(70.h),
            ],
          ),
        ),
      ),
    );
  }
}

class Border_btn extends StatelessWidget {
  const Border_btn({
    super.key,
    required this.icons,
    required this.text,
  });
  final String icons;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 50.h,
      decoration: BoxDecoration(
          color: Color(0xffffffff),
          border: Border.all(color: Color(0xffEF2B7B)),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), bottomLeft: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icons),
            sizedBoxWidth(10.h),
            Text(
              text,
              style: TextStyle(
                color: Color(0xFFEE3764),
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
