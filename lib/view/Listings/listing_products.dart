import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';

class ListingProducts extends StatelessWidget {
  const ListingProducts({super.key, required this.product});
  final int product;
  @override
  Widget build(BuildContext context) {
    Map data = {
      'name': ['Necklace', 'Bridal Lehenga'],
      'jName': ['Reethik Jewellers', 'Kalki Fashions'],
      'png': [
        'assets/images/productNecklace.png',
        'assets/images/productBridal Lehenga.png'
      ]
    };
    var sliderPage = 0.obs;
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: 'Products',
        preferredSize: Size.fromHeight(50),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Spacer(),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                  decoration: const ShapeDecoration(
                    color: Color(0x21EF2B7B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                      ),
                    ),
                  ),
                  child: textRed15w400('Delete'),
                ),
              ],
            ),
            sizedBoxHeight(16.h),
            CarouselSlider.builder(
                carouselController: CarouselController(),
                itemCount: 4,
                itemBuilder: (context, index, realIndex) {
                  return SizedBox(
                    width: double.infinity,
                    child: Image.asset(data['png'][product], fit: BoxFit.fill),
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
                      height: 5.h,
                      width: sliderPage.value == index ? 12.w : 5.w,
                      decoration: BoxDecoration(
                          color: AppColors.buttoncolour,
                          borderRadius: BorderRadius.circular(25)),
                    );
                  })),
            ),
            sizedBoxHeight(7.h),
            text373434_18w700(data['name'][product]),
            sizedBoxHeight(5.h),
            text373434_15w400(data['jName'][product]),
            sizedBoxHeight(25.h),
            text373434_18w700('Description'),
            sizedBoxHeight(4.h),
            text373434_15w400(
                'If you re looking for the perfect earrings to complete a specific look or just to add some flare to your everyday jewelry game or to elevate your office wardrobe.'),
            sizedBoxHeight(25.h),
            text373434_18w700('Pricing Info'),
            sizedBoxHeight(4.h),
            text373434_15w400('₹ 10,00,00')
          ],
        ),
      ),
    );
  }
}
