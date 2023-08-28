import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/view/Listings/Services%20Listing/services_album.dart';
import '../../../Utils/Common/CustomAppBarDynamic.dart';
import '../../../Utils/Common/sized_box.dart';
import '../../../Utils/themedata.dart';
import 'albums_main.dart';

class ServicesListing extends StatefulWidget {
  const ServicesListing({super.key});

  @override
  State<ServicesListing> createState() => _ServicesListingState();
}

class _ServicesListingState extends State<ServicesListing> {
  final isDialOpen = ValueNotifier(false);

  bool showingAdditionalDetails = false;
  final RxInt sliderPage = 0.obs;
  final CarouselController carouselController = CarouselController();
  final ScrollController scrollController = ScrollController();

  List images = [
    {"image": "assets/images/detailpreview1.png"},
    {"image": "assets/images/detailpreview2.png"},
    {"image": "assets/images/detailpreview1.png"},
    {"image": "assets/images/detailpreview2.png"},
    {"image": "assets/images/detailpreview1.png"},
  ];

  @override
  void initState() {
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
          isDialOpen.value = false;

          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: CustomAppBarDynamic(
            backArrow: false,
            titleTxt: "Listings",
            preferredSize: const Size.fromHeight(50)),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHeight(5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 67.w,
                    padding: EdgeInsets.symmetric(vertical: 6.h),
                    decoration: const ShapeDecoration(
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
                        color: const Color(0xFFEF2B7B),
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
                      image: const DecorationImage(
                        image: AssetImage("assets/images/detailpreview.png"),
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
                            buttonSize: const Size(47, 47),
                            // animatedIcon: AnimatedIcons.arrow_menu,
                            animatedIconTheme: const IconThemeData(
                                color: AppColors.buttoncolour),

                            iconTheme: const IconThemeData(
                                color: AppColors.buttoncolour),
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
                                child: const Icon(
                                  Icons.call,
                                  color: AppColors.buttoncolour,
                                ),
                                // label: 'Call',
                                backgroundColor: Colors.white,
                                onTap: () => showToast("Selected Call..."),
                              ),
                              SpeedDialChild(
                                child: const Icon(
                                  Icons.mail_outline_outlined,
                                  color: AppColors.buttoncolour,
                                ),
                                // label: 'Mail',
                                backgroundColor: Colors.white,
                                onTap: () => showToast("Selected Message..."),
                              ),
                              SpeedDialChild(
                                child: const Icon(
                                  Icons.favorite_border_outlined,
                                  color: AppColors.buttoncolour,
                                ),
                                // label: 'Like',
                                backgroundColor: Colors.white,
                                onTap: () => showToast("Selected Like..."),
                              ),
                              SpeedDialChild(
                                child: const Icon(
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
                            // icon: Icons.keyboard_double_arrow_right_rounded,
                            child: SvgPicture.asset(
                              'assets/images/doubleArrow.svg',
                              height: 40.h,
                              fit: BoxFit.fill,
                            ),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Reethik Cocktails',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF373434),
                                          fontSize: 18.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      sizedBoxWidth(16.w),
                                      GestureDetector(
                                        onTap: () {
                                          Get.toNamed('/certificate');
                                        },
                                        child: Text(
                                          'Wedzy certified',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xFFEF2B7B),
                                            fontSize: 15.sp,
                                            fontFamily: 'AvenirNextCyr',
                                            fontWeight: FontWeight.w400,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                      sizedBoxWidth(6.w),
                                      SvgPicture.asset(
                                        "assets/images/certified.svg",
                                        color: AppColors.buttoncolour,
                                        width: 20.w,
                                        height: 20.h,
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
                                          color: const Color(0xFF373434),
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
                                          color: const Color(0xFF373434),
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
                                        'reethikcocktails@gmail.com',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF373434),
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
                    side:
                        const BorderSide(width: 0.15, color: Color(0xFF9B9B9B)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  shadows: [
                    const BoxShadow(
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
                              color: const Color(0xFF373434),
                              fontSize: 18.sp,
                              fontFamily: 'AvenirNextCyr',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showingAdditionalDetails =
                                        !showingAdditionalDetails;
                                  });
                                },
                                child: Text(
                                  'Package Details',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF373434),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              sizedBoxWidth(1.w),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showingAdditionalDetails =
                                        !showingAdditionalDetails;
                                  });
                                },
                                child: SvgPicture.asset(
                                  !showingAdditionalDetails
                                      ? "assets/images/arrowdown.svg"
                                      : "assets/images/arrowup.svg",
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  sizedBoxWidth(100.w),
                                  SvgPicture.asset(
                                      "assets/images/detailpreview.svg"),
                                ],
                              )
                            ],
                          ),
                          sizedBoxHeight(18.h),
                          Visibility(
                              visible: showingAdditionalDetails,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '₹',
                                        style: TextStyle(
                                          color: const Color(0xFFEE3764),
                                          fontSize: 22.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      sizedBoxWidth(7.w),
                                      Text(
                                        '20,000',
                                        style: TextStyle(
                                          color: const Color(0xFF373434),
                                          fontSize: 18.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  sizedBoxHeight(12.h),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/group.svg"),
                                      sizedBoxWidth(7.w),
                                      Text(
                                        '100-150 guests',
                                        style: TextStyle(
                                          color: const Color(0xFF373434),
                                          fontSize: 15.sp,
                                          fontFamily: 'AvenirNextCyr',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  sizedBoxHeight(17.h),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 71,
                                        child: Text(
                                          '1 Lead Bartenders',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xFF373434),
                                            fontSize: 12.sp,
                                            fontFamily: 'AvenirNextCyr',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      sizedBoxWidth(2.w),
                                      SvgPicture.asset(
                                          "assets/images/Ellipse 1290.svg"),
                                      sizedBoxWidth(2.w),
                                      SizedBox(
                                        width: 70,
                                        child: Text(
                                          '2 Flair Bartenders',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xFF373434),
                                            fontSize: 12.sp,
                                            fontFamily: 'AvenirNextCyr',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      sizedBoxWidth(2.w),
                                      SvgPicture.asset(
                                          "assets/images/Ellipse 1290.svg"),
                                      sizedBoxWidth(2.w),
                                      SizedBox(
                                        width: 50,
                                        child: Text(
                                          '3 Bar Rovers',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xFF373434),
                                            fontSize: 12.sp,
                                            fontFamily: 'AvenirNextCyr',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      sizedBoxWidth(2.w),
                                      SvgPicture.asset(
                                          "assets/images/Ellipse 1290.svg"),
                                      sizedBoxWidth(3.w),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 5.h),
                                        child: SizedBox(
                                          width: 67,
                                          child: Text(
                                            '2 Mixologist',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: const Color(0xFF373434),
                                              fontSize: 12.sp,
                                              fontFamily: 'AvenirNextCyr',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              sizedBoxHeight(28.h),
              Text(
                'About',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF373434),
                  fontSize: 18.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w700,
                ),
              ),
              sizedBoxHeight(8.h),
              Text(
                '5 years of experience working since 2018',
                style: TextStyle(
                  color: const Color(0xFF373434),
                  fontSize: 15.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                ),
              ),
              sizedBoxHeight(8.h),
              Text(
                'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et dolor sit amet Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et dolor sit amet',
                style: TextStyle(
                  color: const Color(0xFF373434),
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
                  color: const Color(0xFF373434),
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
                  color: const Color(0xFF373434),
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
                  color: const Color(0xFF373434),
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
                  color: const Color(0xFF373434),
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
                  color: const Color(0xFF373434),
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
                  color: const Color(0xFF373434),
                  fontSize: 15.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                ),
              ),
              sizedBoxHeight(41.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text373434_18w700(' Album'),
                  InkWell(
                    onTap: () {
                      Get.to(() => const AlbumsMain());
                    },
                    child: Container(
                      width: 83.w,
                      height: 29.h,
                      decoration: const ShapeDecoration(
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
                          textEF2B7B_12w500('View more'),
                        ],
                      ),
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
                      child: InkWell(
                        onTap: () {
                          Get.to(() => const ServicesAlbum());
                        },
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
                                          color: const Color(0xFF373434),
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
                                        color: const Color(0xFFFEF3F8),
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
                                                color: const Color(0xFFEE3764),
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
                      ),
                    );
                  },
                ),
              ),
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
              // sizedBoxHeight(43.h),
              // CustomButton(text: "Dashboard", onTap: () {}),
              sizedBoxHeight(110.h),
            ],
          ),
        ),
      ),
    );
  }

  Future showToast(String message) async {
    await Fluttertoast.cancel();

    Fluttertoast.showToast(msg: message, fontSize: 18.sp);
  }
}
