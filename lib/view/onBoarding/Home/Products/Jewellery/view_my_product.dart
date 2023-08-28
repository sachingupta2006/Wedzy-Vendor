import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/view/onBoarding/Home/Products/Jewellery/add_product.dart';

import '../../../../../Utils/Common/CustomAppBarDynamic.dart';
import '../../../../../Utils/themedata.dart';

class View_my_product extends StatefulWidget {
  const View_my_product({super.key});

  @override
  State<View_my_product> createState() => _View_my_productState();
}

class _View_my_productState extends State<View_my_product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: 'Products',
        preferredSize: const Size.fromHeight(50),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(25.h),
            text373434_18w700('Jewellery'),
            sizedBoxHeight(15.h),
            text373737_12w400('2 products'),
            sizedBoxHeight(30.h),
            const product_details(
              image: 'assets/images/jew1.png',
              text1: 'Necklace',
              text2: 'Kalyan Jewellers',
              text3: '₹ 10,00,00',
            ),
            sizedBoxHeight(25.h),
            const product_details(
              image: 'assets/images/jew2.png',
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
                  const Text(
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
      height: 100.h,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFBBBBBB)),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(5)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                  child: Image.asset(image,
                      fit: BoxFit.cover, height: 100.h, width: 90)),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxHeight(10.h),
                  text373434_18w400(text1),
                  sizedBoxHeight(4.h),
                  text707070_15w400(text2),
                  sizedBoxHeight(4.h),
                  textBlack15w700(text3),
                  sizedBoxHeight(10.h),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                sizedBoxHeight(15.h),
                GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset('assets/images/edit-3.svg')),
                sizedBoxHeight(15.h),
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
