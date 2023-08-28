import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/themedata.dart';

class Makeupshoppreview extends StatefulWidget {
  const Makeupshoppreview({super.key});

  @override
  State<Makeupshoppreview> createState() => _MakeupshoppreviewState();
}

class _MakeupshoppreviewState extends State<Makeupshoppreview> {
  final isDialOpen = ValueNotifier(false);

  bool showingAdditionalDetails = false;
  final RxInt sliderPage = 0.obs;
  final CarouselController carouselController = CarouselController();
  final ScrollController scrollController = ScrollController();

  List images = [
    {"image": "assets/images/talentshowpreview1.png"},
    {"image": "assets/images/talentshowpreview1.png"},
    {"image": "assets/images/talentshowpreview1.png"},
    {"image": "assets/images/talentshowpreview1.png"},
    {"image": "assets/images/talentshowpreview1.png"},
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      int index = (scrollController.offset / 170.w).round();
      sliderPage.value = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (isDialOpen.value) {
          //closed speed dial
          isDialOpen.value = false;

          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        appBar: CustomAppBarDynamic(
            titleTxt: "Shop Detail Preview",
            preferredSize: Size.fromHeight(50)),
        // floatingActionButton: SpeedDial(
        //   direction: SpeedDialDirection.right,
        //   buttonSize: Size(50, 50),
        //   animatedIcon: AnimatedIcons.arrow_menu,
        //   animatedIconTheme: IconThemeData(color: AppColors.buttoncolour),
        //   // icon: Icons.arrow_forward_ios,
        //   iconTheme: IconThemeData(color: AppColors.buttoncolour),
        //   backgroundColor: Colors.white,
        //   overlayColor: Colors.black,
        //   overlayOpacity: 0.4,
        //   spacing: 4,
        //   spaceBetweenChildren: 2,
        //   // closeManually: true,
        //   // onOpen: () => showToast('Opened...'),
        //   // onClose: () => showToast("Closed..."),
        //   openCloseDial: isDialOpen,
        //   children: [
        //     SpeedDialChild(
        //       child: Icon(
        //         Icons.call,
        //         color: AppColors.buttoncolour,
        //       ),
        //       // label: 'Call',
        //       backgroundColor: Colors.white,
        //       onTap: () => showToast("Selected Call..."),
        //     ),
        //     SpeedDialChild(
        //       child: Icon(
        //         Icons.mail_outline_outlined,
        //         color: AppColors.buttoncolour,
        //       ),
        //       // label: 'Mail',
        //       backgroundColor: Colors.white,
        //       onTap: () => showToast("Selected MAil..."),
        //     ),
        //     SpeedDialChild(
        //       child: Icon(
        //         Icons.favorite_border_outlined,
        //         color: AppColors.buttoncolour,
        //       ),
        //       // label: 'Like',
        //       backgroundColor: Colors.white,
        //       onTap: () => showToast("Selected Like..."),
        //     ),
        //     SpeedDialChild(
        //       child: Icon(
        //         Icons.location_on_outlined,
        //         color: AppColors.buttoncolour,
        //       ),
        //       // SvgPicture.asset(
        //       //   "assets/images/map-pin.svg",
        //       //   color: AppColors.buttoncolour,
        //       //   // width: 0.4,
        //       // ),
        //       // label: 'Map',
        //       backgroundColor: Colors.white,
        //       onTap: () => showToast("Selected Map..."),
        //     ),
        //   ],
        // ),
        body: SafeArea(
            child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 67.w,
                    height: 29.h,
                    decoration: ShapeDecoration(
                      color: Color(0x21EF2B7B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                        ),
                      ),
                    ),
                    child: Text(
                      'Edit',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFEF2B7B),
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(23.h),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 399.h,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage("assets/images/makeupshoppreview.png"),
                        fit: BoxFit.cover,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 9.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sizedBoxHeight(17.h),
                          SpeedDial(
                            direction: SpeedDialDirection.right,
                            buttonSize: Size(47, 47),
                            // animatedIcon: AnimatedIcons.arrow_menu,
                            animatedIconTheme:
                                IconThemeData(color: AppColors.buttoncolour),
                            icon: Icons.arrow_forward_ios,
                            iconTheme:
                                IconThemeData(color: AppColors.buttoncolour),
                            backgroundColor: Colors.white,
                            overlayColor: Colors.black,
                            overlayOpacity: 0.4,
                            // spacing: 1,
                            // spaceBetweenChildren: 2,
                            // closeManually: true,
                            // onOpen: () => showToast('Opened...'),
                            // onClose: () => showToast("Closed..."),
                            openCloseDial: isDialOpen,
                            children: [
                              SpeedDialChild(
                                child: Icon(
                                  Icons.call,
                                  color: AppColors.buttoncolour,
                                ),
                                // label: 'Call',
                                backgroundColor: Colors.white,
                                onTap: () => showToast("Selected Call..."),
                              ),
                              SpeedDialChild(
                                child: Icon(
                                  Icons.mail_outline_outlined,
                                  color: AppColors.buttoncolour,
                                ),
                                // label: 'Mail',
                                backgroundColor: Colors.white,
                                onTap: () => showToast("Selected MAil..."),
                              ),
                              SpeedDialChild(
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  color: AppColors.buttoncolour,
                                ),
                                // label: 'Like',
                                backgroundColor: Colors.white,
                                onTap: () => showToast("Selected Like..."),
                              ),
                              SpeedDialChild(
                                child: Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.buttoncolour,
                                ),
                                // SvgPicture.asset(
                                //   "assets/images/map-pin.svg",
                                //   color: AppColors.buttoncolour,
                                //   // width: 0.4,
                                // ),
                                // label: 'Map',
                                backgroundColor: Colors.white,
                                onTap: () => showToast("Selected Map..."),
                              ),
                            ],
                          ),
                          sizedBoxHeight(185.h),
                          Container(
                            width: 310.w,
                            height: 131.h,
                            decoration: ShapeDecoration(
                              color: Colors.white.withOpacity(0.75),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 12.w,
                                  top: 9.h,
                                  right: 7.w,
                                  bottom: 6.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Shonali’s Beauty',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF373434),
                                          fontSize: 18.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      // sizedBoxWidth(70.w),
                                      GestureDetector(
                                        onTap: () {
                                          Get.toNamed('/makeupcertificate');
                                        },
                                        child: Row(
                                          children: [
                                            Text(
                                              'Wedzy certified',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFEF2B7B),
                                                fontSize: 15.sp,
                                                fontFamily: 'AvenirNextCyr',
                                                fontWeight: FontWeight.w400,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                            SvgPicture.asset(
                                              "assets/images/certified.svg",
                                              color: AppColors.buttoncolour,
                                              width: 20.w,
                                              height: 20.h,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  sizedBoxHeight(4.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/map-pin.svg"),
                                      sizedBoxWidth(5.w),
                                      Text(
                                        'Malad West, Mumbai',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF373434),
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  sizedBoxHeight(8.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/smartphonewidthlight.svg"),
                                      sizedBoxWidth(4.w),
                                      Text(
                                        '9854513654',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF373434),
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  sizedBoxHeight(4.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/mail.svg",
                                        width: 15.w,
                                        height: 15.h,
                                      ),
                                      sizedBoxWidth(7.w),
                                      Text(
                                        'shonali’sbeauty@gmail.com',
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
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(28.h),
              Container(
                width: 328.w,
                // height: 91.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.15, color: Color(0xFF9B9B9B)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F7B7B7B),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 14.w, top: 19.h, right: 18.w, bottom: 22.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pricing Info',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF373434),
                              fontSize: 18.sp,
                              fontFamily: 'AvenirNextCyr',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          sizedBoxHeight(3.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Standard Price',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF373434),
                                  fontSize: 15.sp,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              sizedBoxWidth(6.w),
                              Text(
                                '₹',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF373434),
                                  fontSize: 15.sp,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              sizedBoxWidth(5.w),
                              Text(
                                '5000',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF373434),
                                  fontSize: 15.sp,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SvgPicture.asset("assets/images/detailpreview.svg")
                    ],
                  ),
                ),
              ),
              sizedBoxHeight(28.h),
              Text(
                'About',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 18.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w700,
                ),
              ),
              sizedBoxHeight(8.h),
              Text(
                '5 years of experience working since 2018',
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 15.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                ),
              ),
              sizedBoxHeight(8.h),
              Text(
                'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et dolor sit amet Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et dolor sit amet',
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 15.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                ),
              ),
              sizedBoxHeight(11.h),
              Text(
                'Cancellation Policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 15.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                ),
              ),
              sizedBoxHeight(1.h),
              Text(
                'Lorem ipsum dolor sit amet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 15.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                ),
              ),
              sizedBoxHeight(10.h),
              Text(
                'Exchange Policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 15.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                ),
              ),
              sizedBoxHeight(1.h),
              Text(
                'Lorem ipsum dolor sit amet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 15.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                ),
              ),
              sizedBoxHeight(9.h),
              Text(
                'Refind policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 15.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                ),
              ),
              sizedBoxHeight(1.h),
              Text(
                'Lorem ipsum Dolor Sit Amet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 15.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                ),
              ),
              sizedBoxHeight(41.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Album',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 18.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    width: 83.w,
                    height: 29.h,
                    decoration: ShapeDecoration(
                      color: Color(0x21EF2B7B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'View more',
                          style: TextStyle(
                            color: Color(0xFFEF2B7B),
                            fontSize: 12.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              sizedBoxHeight(35.h),
              SizedBox(
                height: 164.h,
                // width: 155.w,
                child: ListView.separated(
                  itemCount: images.length,
                  controller: scrollController,
                  separatorBuilder: (_, index) {
                    return sizedBoxWidth(1.w);
                  },
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Container(
                        width: 155.w,
                        height: 124.h,
                        decoration: ShapeDecoration(
                          // color: Colors.yellow,
                          image: DecorationImage(
                            image: AssetImage(
                              images[index]['image'],
                            ),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 8.w, right: 3.w, top: 9.h, bottom: 7.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 92.w,
                                height: 28.h,
                                decoration: ShapeDecoration(
                                  color: Colors.white
                                      .withOpacity(0.6299999952316284),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Portfolio',
                                      style: TextStyle(
                                        color: Color(0xFF373434),
                                        fontSize: 15.sp,
                                        fontFamily: 'AvenirNextCyr',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              sizedBoxHeight(86.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                // crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 46.w,
                                    height: 28.h,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFEF3F8),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 3.w,
                                          top: 3.h,
                                          right: 3.w,
                                          bottom: 3.h),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                              "assets/images/detailpreview3.svg"),
                                          Text(
                                            '10',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFFEE3764),
                                              fontSize: 14.sp,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              // CarouselSlider.builder(
              //     carouselController: CarouselController(),
              //     itemCount: 2,
              //     itemBuilder: (context, index, realindex) {
              //       return Padding(
              //         padding: EdgeInsets.symmetric(horizontal: 16.w),
              //         child: Container(
              //           width: 155.w,
              //           height: 124.h,
              //           decoration: ShapeDecoration(
              //             image: DecorationImage(
              //               image: AssetImage(
              //                 images[index]['image'],
              //               ),
              //               fit: BoxFit.fill,
              //             ),
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(5)),
              //           ),
              //           child: Padding(
              //             padding: EdgeInsets.only(
              //                 left: 8.w, right: 3.w, top: 9.h, bottom: 7.h),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Container(
              //                   width: 92.w,
              //                   height: 28.h,
              //                   decoration: ShapeDecoration(
              //                     color: Colors.white
              //                         .withOpacity(0.6299999952316284),
              //                     shape: RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(14),
              //                     ),
              //                   ),
              //                   child: Row(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Text(
              //                         'Portfolio',
              //                         style: TextStyle(
              //                           color: Color(0xFF373434),
              //                           fontSize: 15.sp,
              //                           fontFamily: 'AvenirNextCyr',
              //                           fontWeight: FontWeight.w400,
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //                 sizedBoxHeight(86.h),
              //                 Row(
              //                   mainAxisAlignment: MainAxisAlignment.end,
              //                   // crossAxisAlignment: CrossAxisAlignment.end,
              //                   children: [
              //                     Container(
              //                       width: 46.w,
              //                       height: 28.h,
              //                       decoration: ShapeDecoration(
              //                         color: Color(0xFFFEF3F8),
              //                         shape: RoundedRectangleBorder(
              //                             borderRadius: BorderRadius.circular(5)),
              //                       ),
              //                       child: Padding(
              //                         padding: EdgeInsets.only(
              //                             left: 3.w,
              //                             top: 3.h,
              //                             right: 3.w,
              //                             bottom: 3.h),
              //                         child: Row(
              //                           children: [
              //                             SvgPicture.asset(
              //                                 "assets/images/detailpreview3.svg"),
              //                             Text(
              //                               '10',
              //                               textAlign: TextAlign.center,
              //                               style: TextStyle(
              //                                 color: Color(0xFFEE3764),
              //                                 fontSize: 14.sp,
              //                                 fontFamily: 'Montserrat',
              //                                 fontWeight: FontWeight.w400,
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                     )
              //                   ],
              //                 )
              //               ],
              //             ),
              //           ),
              //         ),
              //       );
              //     },
              //     options: CarouselOptions(
              //         autoPlay: true,
              //         height: 159.h,
              //         autoPlayAnimationDuration: const Duration(seconds: 3),
              //         viewportFraction: 1,
              //         onPageChanged: (index, reason) {
              //           setState(() {
              //             sliderPage.value = index;
              //           });
              //         })),
              sizedBoxHeight(19.h),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    images.length,
                    (index) => Container(
                      decoration: BoxDecoration(
                          color: AppColors.buttoncolour,
                          borderRadius: BorderRadius.circular(25.r)),
                      width: 6.w,
                      height: sliderPage.value == index ? 6.h : 4.h,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              sizedBoxHeight(43.h),
              CustomButton(text: "Dashboard", onTap: () {}),
              sizedBoxHeight(40.h),
            ],
          ),
        )),
      ),
    );
  }

  Future showToast(String message) async {
    await Fluttertoast.cancel();

    Fluttertoast.showToast(msg: message, fontSize: 18.sp);
  }
}
