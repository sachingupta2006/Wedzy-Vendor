import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/view/onBoarding/Home/Products/Jewellery/add_product.dart';

import '../../../../../Utils/Common/CustomAppBarDynamic.dart';
import '../../../../../Utils/themedata.dart';

class wedding_view_product extends StatefulWidget {
  const wedding_view_product({super.key});

  @override
  State<wedding_view_product> createState() => _wedding_view_productState();
}

class _wedding_view_productState extends State<wedding_view_product> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(25.h),
            Text(
              'Wedding Wear',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 18,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.18,
              ),
            ),
            sizedBoxHeight(15.h),
            Text(
              '2 products',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.12,
              ),
            ),
            sizedBoxHeight(30.h),
            product_details(
              image: 'assets/images/Rectangle 7007.png',
              text1: 'Necklace',
              text2: 'Kalyan Jewellers',
              text3: '₹ 10,00,00',
            ),
            sizedBoxHeight(25.h),
            product_details(
              image: 'assets/images/Rectangle 6869.png',
              text1: 'Necklace',
              text2: 'Kalyan Jewellers',
              text3: '₹ 10,00,00',
            ),
            sizedBoxHeight(30.h),
            GestureDetector(
              onTap: () {
                Get.toNamed('/add_product');
              },
              child: Row(
                children: [
                  Text(
                    'Add product',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFEF2B7B),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  sizedBoxWidth(3.h),
                  SvgPicture.asset('assets/images/plus-circle.svg'),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class product_details extends StatelessWidget {
  const product_details({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.image,
  });
  final String text1;
  final String text2;
  final String text3;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFBBBBBB)),
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 100,
                  width: 90,
                )),
          ),
          SizedBox(
            width: 15,
          ),
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxHeight(15.h),
                Text(
                  text1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 18,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.18,
                  ),
                ),
                sizedBoxHeight(10.h),
                Text(
                  text2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF707070),
                    fontSize: 15,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.15,
                  ),
                ),
                sizedBoxHeight(10.h),
                Text(
                  text3,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.15,
                  ),
                ),
                sizedBoxHeight(10.h),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                sizedBoxHeight(15.h),
                GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset('assets/images/edit-3.svg')),
                sizedBoxHeight(25.h),
                GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return deleteproductAlertDialogue(context);
                        },
                      );
                    },
                    child: SvgPicture.asset('assets/images/trash-2.svg')),
                sizedBoxHeight(15.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

AlertDialog deleteproductAlertDialogue(context) {
  return AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        textBlack18w400Center('Are You Sure You Want Delete?'),
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
                                    'Your Product Has Been Deleted Successfully!'),
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
