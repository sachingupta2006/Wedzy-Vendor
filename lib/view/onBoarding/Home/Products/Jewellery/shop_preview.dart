import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/CustomBottomBar.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/themedata.dart';
import 'package:wedzy/resources/routes/route_name.dart';
import 'package:wedzy/view/onBoarding/Home/home.dart';

class Jewellery_shoppreview extends StatefulWidget {
  const Jewellery_shoppreview({super.key});

  @override
  State<Jewellery_shoppreview> createState() => _Jewellery_shoppreviewState();
}

class _Jewellery_shoppreviewState extends State<Jewellery_shoppreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: 'Shop Preview',
        preferredSize: Size.fromHeight(50),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHeight(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteName.add_required_info);
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
                        'Edit',
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
              sizedBoxHeight(15),
              Container(
                width: 400,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/images/image 29.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              sizedBoxHeight(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reethik Jewellers',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 18,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.18,
                    ),
                  ),

                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Text(
                  //       'Reethik Jewellers',
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(
                  //         color: Color(0xFF373434),
                  //         fontSize: 18,
                  //         fontFamily: 'AvenirNextCyr',
                  //         fontWeight: FontWeight.w700,
                  //         letterSpacing: 0.18,
                  //       ),
                  //     ),
                  //     sizedBoxHeight(5),
                  //     shop_details(
                  //       images: 'assets/images/map-pin.svg',
                  //       title: 'Malad West, Mumbai',
                  //     ),
                  //     sizedBoxHeight(5),
                  //     shop_details(
                  //       images: "assets/images/smartphonewidthlight.svg",
                  //       title: '9854513654',
                  //     ),
                  //     sizedBoxHeight(5),
                  //     // shop_details(
                  //     //   images: 'assets/images/mail.svg',
                  //     //   title: 'reethikcocktails@gmail.com',
                  //     // ),
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       children: [
                  //         Padding(
                  //           padding: EdgeInsets.only(left: 1.w),
                  //           child: SvgPicture.asset(
                  //             "assets/images/mail.svg",
                  //             width: 15.w,
                  //             height: 15.h,
                  //           ),
                  //         ),
                  //         sizedBoxWidth(10),
                  //         Text(
                  //           'reethikcocktails@gmail.com',
                  //           textAlign: TextAlign.center,
                  //           style: TextStyle(
                  //             color: Color(0xFF373434),
                  //             fontSize: 15.sp,
                  //             fontFamily: 'AvenirNextCyr',
                  //             fontWeight: FontWeight.w400,
                  //           ),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),

                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/certificate');
                    },
                    child: Row(
                      children: [
                        Text(
                          'Wedzy certified',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFEF2B7B),
                            fontSize: 15,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            letterSpacing: 0.15,
                          ),
                        ),
                        sizedBoxWidth(10),
                        SvgPicture.asset(
                          'assets/images/material-symbols_verified-outline.svg',
                          color: AppColors.buttoncolour,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxHeight(5),
                  shop_details(
                    images: 'assets/images/map-pin.svg',
                    title: 'Malad West, Mumbai',
                  ),
                  sizedBoxHeight(5),
                  shop_details(
                    images: "assets/images/smartphonewidthlight.svg",
                    title: '9854513654',
                  ),
                  sizedBoxHeight(5),
                  // shop_details(
                  //   images: 'assets/images/mail.svg',
                  //   title: 'reethikcocktails@gmail.com',
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 1.w),
                        child: SvgPicture.asset(
                          "assets/images/mail.svg",
                          width: 15.w,
                          height: 15.h,
                        ),
                      ),
                      sizedBoxWidth(10),
                      Text(
                        'reethikcocktails@gmail.com',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF373434),
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              sizedBoxHeight(30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 18,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.18,
                    ),
                  ),
                  sizedBoxHeight(5),
                  Text(
                    '5 years of experience working since 2018',
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 15,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.15,
                    ),
                  ),
                  sizedBoxHeight(5),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et dolor sit amet Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et dolor sit amet',
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 15,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.15,
                    ),
                  ),
                  sizedBoxHeight(30),
                  Text(
                    'Products',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 18,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.18,
                    ),
                  ),
                  sizedBoxHeight(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/product_preview');
                        },
                        child: shop_product_detail(
                          images: 'assets/images/Rectangle 6849.png',
                          title1: 'Necklace',
                          title2: 'Kalyan Jewellers',
                          title3: '₹ 10,00,00',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/product_preview');
                        },
                        child: shop_product_detail(
                          images: 'assets/images/Rectangle 6849.png',
                          title1: 'Necklace',
                          title2: 'Kalyan Jewellers',
                          title3: '₹ 10,00,00',
                        ),
                      ),
                    ],
                  ),
                  sizedBoxHeight(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/product_preview');
                        },
                        child: shop_product_detail(
                          images: 'assets/images/Rectangle 6849.png',
                          title1: 'Necklace',
                          title2: 'Kalyan Jewellers',
                          title3: '₹ 10,00,00',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/product_preview');
                        },
                        child: shop_product_detail(
                          images: 'assets/images/Rectangle 6849.png',
                          title1: 'Necklace',
                          title2: 'Kalyan Jewellers',
                          title3: '₹ 10,00,00',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              sizedBoxHeight(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 100,
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
                        'View more',
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
              sizedBoxHeight(30),
              CustomButton(
                  text: "Dashboard",
                  onTap: () {
                    productVisibility.value = true;

                    Get.to(() => CustomBottomBar(pageIndex: 1));
                  }),
              sizedBoxHeight(50.h),
            ],
          ),
        ),
      ),
    );
  }
}

class shop_product_detail extends StatelessWidget {
  const shop_product_detail({
    void Function()? onTap,
    required this.images,
    required this.title1,
    required this.title2,
    required this.title3,
  });
  final String images;
  final String title1;
  final String title2;
  final String title3;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 160,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(images))),
        ),
        sizedBoxHeight(5),
        Text(
          title1,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF373434),
            fontSize: 18,
            fontFamily: 'AvenirNextCyr',
            fontWeight: FontWeight.w400,
            letterSpacing: 0.18,
          ),
        ),
        sizedBoxHeight(5),
        Text(
          title2,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF707070),
            fontSize: 15,
            fontFamily: 'AvenirNextCyr',
            fontWeight: FontWeight.w400,
            letterSpacing: 0.15,
          ),
        ),
        sizedBoxHeight(5),
        Text(
          title3,
          style: TextStyle(
            color: Color(0xFF373434),
            fontSize: 15,
            fontFamily: 'AvenirNextCyr',
            fontWeight: FontWeight.w700,
            letterSpacing: 0.15,
          ),
        ),
        sizedBoxHeight(5),
      ],
    );
  }
}

class shop_details extends StatelessWidget {
  const shop_details({
    super.key,
    required this.images,
    required this.title,
  });
  final String images;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(
          images,
        ),
        sizedBoxWidth(10),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF373434),
            fontSize: 15,
            fontFamily: 'AvenirNextCyr',
            fontWeight: FontWeight.w400,
            letterSpacing: 0.15,
          ),
        ),
      ],
    );
  }
}
