import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';
import 'package:wedzy/view/onBoarding/Home/Virtual%20Wallet/wallet.dart';
import '../../../Utils/Common/CustomBottomBar.dart';
import '../../../resources/routes/route_name.dart';
import '../../SideMenu/Notifications.dart';
import '../../Services/service.dart';
import 'Statistics/statistics.dart';
import 'my_shop.dart';
import 'payments.dart';

var productVisibility = false.obs;

class Home extends StatelessWidget {
  const Home({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    Map data = {
      'title': ['Bookings', 'Recent Orders'],
      'add': ['Add Service', 'Add Product'],
      'product/service': ['Service', 'Product'],
    };
    String percentage = '0%';

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              elevation: 4,
              shadowColor: const Color(0x3FB3B3B3),
              title: Column(children: [
                SizedBox(height: 10.h),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("assets/images/logo1.png", height: 19.h),
                  sizedBoxWidth(8.w),
                  text373434_18w400('Wedzy Business')
                ])
              ]))),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxHeight(24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          scaffoldKey.currentState?.openDrawer();
                        },
                        child: shadowIconContainer('menu')),
                    Row(
                      children: [
                        shadowIconContainer(
                          'message',
                          onTap: () {
                            Get.toNamed(RouteName.message);
                          },
                        ),
                        sizedBoxWidth(25.w),
                        shadowIconContainer(
                          'bell',
                          onTap: () {
                            Get.to(() => Notifications(
                                  index: index,
                                ));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                sizedBoxHeight(20.h),
                text373434_18w400('Hi, Reethik'),
                sizedBoxHeight(4.h),
                text373434_15w400('Your wedzy shop is live now'),
                sizedBoxHeight(14.h),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const MyShop());
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(8.w, 12.h, 0, 12.h),
                    width: double.infinity,
                    decoration: _decoration(
                        AppColors.secondary.withOpacity(0.05),
                        10,
                        const Color(0xffffffff),
                        2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularPercentIndicator(
                          radius: 35.r,
                          backgroundColor:
                              const Color(0xffEE3764).withOpacity(0.12),
                          progressColor: const Color(0xffEE3764),
                          percent: 0.01,
                          center: textEE3764_15w700(percentage),
                        ),
                        sizedBoxWidth(8.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text373434_15w400('Complete your shop details'),
                            text373737_12w400('$percentage Completed')
                          ],
                        ),
                        Stack(
                          children: [
                            SvgPicture.asset('assets/images/SVG/1.svg',
                                height: 71.h),
                            Positioned(
                              bottom: 0,
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Icon(Icons.arrow_forward_ios,
                                  size: 12.h, color: AppColors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                sizedBoxHeight(17.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    paymentCircle('Payments', () {
                      Get.to(() => const Payments());
                    }),
                    paymentCircle('Wallet', () {
                      Get.to(() => const Wallet());
                    }),
                    paymentCircle('Stats', () {
                      Get.to(() => const Statistics());
                    }),
                    paymentCircle(data['product/service'][index], () {
                      index == 0
                          ? Get.to(() => const Service())
                          : Get.toNamed(RouteName.new_user);
                    }),
                  ],
                ),
                sizedBoxHeight(27.h),
                text373434_18w700(data['title'][index]),
                Obx(
                  () => Visibility(
                    visible: productVisibility.value,
                    replacement: addEmpty(data),
                    child: Column(
                      children: [
                        addFilled(context),
                        addFilled(context),
                        addFilled(context),
                        addFilled(context),
                      ],
                    ),
                  ),
                ),
                sizedBoxHeight(110.h)
              ],
            ),
          )),
    );
  }

  Widget addFilled(context) {
    return Column(
      children: [
        sizedBoxHeight(10.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColors.buttoncolour,
              width: 2.h,
              height: 110.h,
            ),
            sizedBoxWidth(10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textEE3764_12w700('8 June, 10 PM'),
                sizedBoxHeight(20.h),
                containerWidget(
                    context,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sizedBoxHeight(10.h),
                        text373434_15w400('#virushka’s haldi'),
                        sizedBoxHeight(10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            text373434_15w400('lorem ipsum'),
                            InkWell(
                                onTap: () {
                                  print('object');
                                  // selectedIndexBottomBar.value = 1;
                                  // Get.back();
                                  // Get.to(() => CustomBottomBar(pageIndex: 1));
                                },
                                child: textEF2B2B_15w700Underline('Details'))
                          ],
                        ),
                        sizedBoxHeight(15.h)
                      ],
                    )),
                sizedBoxHeight(20.h),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget containerWidget(context, Widget widget) {
    return Container(
      width: MediaQuery.of(context).size.width - 50.w,
      // margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFEE3764),
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

  Widget addEmpty(
    data,
  ) {
    return Center(
      child: Column(
        children: [
          sizedBoxHeight(42.h),
          SvgPicture.asset('assets/images/SVG/${data['title'][index]}.svg',
              height: 93.h),
          sizedBoxHeight(13.h),
          text373434_15w400('There’s is nothing in your bookings'),
          sizedBoxHeight(16.h),
          GestureDetector(
              onTap: () {
                productVisibility.value = true;
              },
              child: textEF2B2B_15w700Underline(data['add'][index]))
        ],
      ),
    );
  }

  Widget paymentCircle(String txt, route) {
    return GestureDetector(
      onTap: route,
      child: Column(
        children: [
          Container(
            width: 56.h,
            height: 56.h,
            decoration: _decoration(
                AppColors.secondary, 100, const Color(0x3F000000), 4),
            child: Center(
              child: SvgPicture.asset(
                'assets/images/SVG/$txt.svg',
                height: 32.h,
              ),
            ),
          ),
          sizedBoxHeight(8.h),
          text373434_15w400(txt)
        ],
      ),
    );
  }

  Widget shadowIconContainer(String iconAssets, {void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 35.w,
          height: 35.w,
          decoration: _decoration(Colors.white, 5, const Color(0x3F575757), 1,
              side: false),
          child: Center(
              child: SvgPicture.asset('assets/images/SVG/$iconAssets.svg'))),
    );
  }

  Decoration _decoration(
      Color color, double radius, Color shadowColor, double offset,
      {bool side = true}) {
    return ShapeDecoration(
      color: color,
      shape: RoundedRectangleBorder(
          side: side
              ? BorderSide(width: 0.10.w, color: const Color(0xFFF05E90))
              : BorderSide.none,
          borderRadius: BorderRadius.circular(radius)),
      shadows: [
        BoxShadow(color: shadowColor, blurRadius: 4, offset: Offset(0, offset))
      ],
    );
  }
}
