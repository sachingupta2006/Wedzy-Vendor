import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';
import 'package:wedzy/resources/routes/route_name.dart';

class Service extends StatefulWidget {
  const Service({super.key});

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  List serviceData = [
    {
      "image": "assets/images/SVG/Black.svg",
      "text": "Bartender",
    },
    {
      "image": "assets/images/SVG/mehndi.svg",
      "text": "Mehandi",
    },
    {
      "image": "assets/images/SVG/decoration.svg",
      "text": "Decoration",
    },
    {
      "image": "assets/images/SVG/catering.svg",
      "text": "Catering",
    },
    {
      "image": "assets/images/SVG/dj.svg",
      "text": "DJ",
    },
    {
      "image": "assets/images/SVG/venue.svg",
      "text": "Venue",
    },
    // {
    //   "image": "assets/images/orchestra.png",
    //   "text": "Orchestra",
    // },
    {
      "image": "assets/images/SVG/cake.svg",
      "text": "Cakes",
    },
    {
      "image": "assets/images/SVG/talent.svg",
      "text": "Talents",
    },
    {
      "image": "assets/images/SVG/choreography.svg",
      "text": "Choreography",
    },
    {
      "image": "assets/images/SVG/photography.svg",
      "text": "Photography",
    },
    {
      "image": "assets/images/SVG/beauty.svg",
      "text": "Beauty \nService",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.all(16.w),
      //   child: CustomButton(text: 'Proceed'),
      // ),
      appBar: CustomAppBarDynamic(
        titleTxt: "Service",
        preferredSize: Size.fromHeight(150.h),
        useCustomWidget: true,
        customWidget: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          padding:
              EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h, bottom: 0.h),
          width: double.infinity,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            ),
            shadows: const [
              BoxShadow(
                  color: Color(0x3F939393), blurRadius: 4, offset: Offset(0, 4))
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.buttoncolour,
                        radius: 14.w,
                        child: CircleAvatar(
                          radius: 12.5.w,
                          backgroundColor: AppColors.white,
                          child: textPrimary12w400('1'),
                        ),
                      ),
                      textPrimary12w400('Select\nService'),
                    ],
                  ),
                  serviceTopWidget(2, 'Add \nInformation'),
                  serviceTopWidget(3, 'Add \nPortfolio'),
                  serviceTopWidget(4, 'Add \nPackage'),
                  serviceTopWidget(5, 'Bookings'),
                ],
              ),
              sizedBoxHeight(10.w),
              Container(
                width: 305.w,
                height: 5.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFFF2F8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 13.w,
                      height: 5.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFEE3764),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 28.h),
        itemCount: serviceData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20.h, childAspectRatio: 1, crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return servicecard(
              index: index,
              svg: serviceData[index]["image"],
              text: serviceData[index]["text"]);
        },
      ),
    );
  }

  Widget serviceTopWidget(int number, String txt) {
    return Column(children: [
      CircleAvatar(
          backgroundColor: Colors.black,
          radius: 14.w,
          child: CircleAvatar(
              radius: 12.5.w,
              backgroundColor: AppColors.white,
              child: textBlack12w400('$number'))),
      sizedBoxHeight(3.h),
      textBlack12w400Center(txt)
    ]);
  }

  Widget servicecard({required String svg, required String text, index}) {
    var selectedCircle = false.obs;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
            onTap: () {
              switch (index) {
                case 0:
                  Get.toNamed(RouteName.requiredinfobartender);
                  break;
                case 1:
                  Get.toNamed(RouteName.mehandirequiredinfo);
                  break;
                case 2:
                  Get.toNamed(RouteName.decorequiredinfo);
                  break;
                case 3:
                  Get.toNamed(RouteName.caterrequiredinfo);
                  break;
                case 4:
                  Get.toNamed(RouteName.djequiredinfopage);
                  break;
                case 5:
                  Get.toNamed(RouteName.venuerequiredinfo);
                  //   break;
                  // case 6:
                  //   Null;
                  break;
                case 6:
                  Get.toNamed(RouteName.requiredinfocake);
                  break;
                case 7:
                  Get.toNamed(RouteName.talentrequiredinfo);
                  break;
                case 8:
                  Get.toNamed(RouteName.choreorequiredinfopage);
                  break;
                case 9:
                  Get.toNamed(RouteName.photorequiredpage);
                  break;
                default:
                  Get.toNamed(RouteName.makeuprequiredinfo);
              }
            },
            child: Obx(
              () => CircleAvatar(
                radius: 39.h,
                backgroundColor: selectedCircle.value
                    ? AppColors.buttoncolour
                    : AppColors.white,
                child: Container(
                  padding: EdgeInsets.all(22.h),
                  // width: 75.h,
                  // height: 75.h,
                  decoration: const ShapeDecoration(
                      color: Color(0xFFFFF9FC),
                      shape: OvalBorder(),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F5F5F5F),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: SvgPicture.asset(
                    svg,
                    width: 31.w,
                    height: 31.h,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )),
        sizedBoxHeight(3.h),
        Flexible(child: text373434_15w400(text)),
      ],
    );
  }
}
