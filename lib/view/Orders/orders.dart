import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import '../../Utils/themedata.dart';
import 'live_order_details.dart';
import 'order_details.dart';

class Orders extends StatelessWidget {
  final bool? backArrow;
  int? selectedpage;
  Orders({super.key, this.backArrow, this.selectedpage});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: selectedpage ?? 0,
      length: 3,
      child: Scaffold(
        appBar: CustomAppBarDynamic(
            backArrow: backArrow,
            titleTxt: 'Order',
            preferredSize: const Size.fromHeight(100),
            useCustomWidget: true,
            customWidget: ButtonsTabBar(
              buttonMargin: EdgeInsets.symmetric(horizontal: 4.w),
              contentPadding: EdgeInsets.symmetric(horizontal: 30.w),
              radius: 25,
              backgroundColor: const Color(0xFFEF2B7B),
              unselectedBorderColor: const Color(0xFFEF2B7B),
              borderWidth: 1,
              borderColor: const Color(0xFFFFFFFF),
              unselectedBackgroundColor: const Color(0xFFFFFFFF),
              unselectedLabelStyle: const TextStyle(color: Color(0xFFEF2B7B)),
              labelStyle: TextStyle(
                color: const Color(0xFFFFFFFF),
                fontWeight: FontWeight.w700,
                fontSize: 15.sp,
              ),
              tabs: const [
                Tab(text: "Requests"),
                Tab(text: "Live"),
                Tab(text: "History"),
              ],
            )),
        body: TabBarView(children: [
          tab1(),
          tab2(context),
          tab3(context),
        ]),
      ),
    );
  }

  Widget tab1() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          orderRequest(),
          orderRequest(),
          orderRequest(),
          sizedBoxHeight(110.h)
        ],
      ),
    );
  }

  Widget tab2(context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxHeight(10.h),
          liveContainer(context, 'Necklase'),
          sizedBoxHeight(20.h),
          liveContainer(context, 'Earrings'),
          sizedBoxHeight(20.h),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: CustomButton(
                text: 'Confirm Order',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Orders(
                                selectedpage: 2,
                              )));
                }),
          ),
          sizedBoxHeight(110.h)
        ],
      ),
    );
  }

  Widget orderRequest() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sizedBoxHeight(17.h),
        Container(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHeight(20.h),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffFFE7F2),
                    borderRadius: BorderRadius.circular(18)),
                padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 6.h),
                child: textBlack15w400('Mon, Apr 14   2.30pm'),
              ),
              sizedBoxHeight(27.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/order1.png'),
                  sizedBoxWidth(15.w),
                  Column(
                    children: [
                      sizedBoxHeight(6.h),
                      textBlack15w400('Necklase'),
                      sizedBoxHeight(11.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 6.h, horizontal: 15.w),
                        decoration: BoxDecoration(
                            color: AppColors.buttoncolour,
                            borderRadius: BorderRadius.circular(4)),
                        child: textWhite15w700('Quantity 2'),
                      )
                    ],
                  )
                ],
              ),
              sizedBoxHeight(5.h),
              Row(
                children: [
                  textBlack15w400('Price - '),
                  textBlack15w700('₹ 500')
                ],
              ),
              const Divider(color: AppColors.secondary),
              sizedBoxHeight(15.h),
              textBlack18w400('Customer'),
              sizedBoxHeight(16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(child: Image.asset('assets/images/profile.png')),
                  sizedBoxWidth(7.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textBlack15w700('Mokshada Kesarkar'),
                      textBlack15w400('9457845684')
                    ],
                  )
                ],
              ),
              sizedBoxHeight(8.h),
              Row(
                children: [
                  Icon(Icons.location_on_outlined, size: 15.h),
                  textBlack15w400('Malad west, Mumbai')
                ],
              ),
              sizedBoxHeight(20.h),
              InkWell(
                  onTap: () {
                    Get.to(() => const OrderDetails());
                  },
                  child: textPrimary15w700('View Order')), // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 16.w),
              //   child: CustomButton(
              //     text: 'View Order',
              //     onTap: () {
              //       Get.to(() => const OrderDetails());
              //     },
              //   ),
              // ),
              sizedBoxHeight(15.h)
            ],
          ),
        ),
      ],
    );
  }

  Widget liveContainer(context, item) {
    return Container(
      margin: EdgeInsets.only(left: 16.w),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxHeight(12.h),
          textBlack15w400(item),
          sizedBoxHeight(7.h),
          textBlack15w400('Mon, Apr 14   2.30pm'),
          sizedBoxHeight(9.h),
          Container(
            padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 15.w),
            decoration: BoxDecoration(
                color: AppColors.buttoncolour,
                borderRadius: BorderRadius.circular(4)),
            child: textWhite15w700('Quantity 2'),
          ),
          sizedBoxHeight(10.h),
          Row(
            children: [textBlack15w400('Price - '), textBlack15w700('₹ 500')],
          ),
          sizedBoxHeight(12.h),
          // Padding(
          //   padding: EdgeInsets.only(right: 16.w),
          //   child: CustomButton(
          //     text: 'View',
          //     onTap: () {
          //       Get.to(() => const LiveOrderDetails());
          //     },
          //   ),
          // ),
          sizedBoxHeight(33.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/images/SVG/completed.svg'),
                  sizedBoxWidth(8.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textBlack15w700('Order Accepted'),
                      sizedBoxHeight(4.h),
                      Row(
                        children: [
                          textBlack15w400('5 June 2023'),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            height: 5.h,
                            width: 5.h,
                            decoration: BoxDecoration(
                                color: const Color(0XFFD9D9D9),
                                borderRadius: BorderRadius.circular(100)),
                          ),
                          textBlack15w400('3pm')
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColors.buttoncolour)),
                child: textPrimary15w400('Order Status'),
              )
            ],
          ),
          sizedBoxHeight(10.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHeight(12.h),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffFFE7F2),
                    borderRadius: BorderRadius.circular(18)),
                padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 6.h),
                child: textBlack15w400('Customer Details'),
              ),
              sizedBoxHeight(13.h),
              Row(
                children: [
                  CircleAvatar(child: Image.asset('assets/images/profile.png')),
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
          sizedBoxHeight(10.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHeight(12.h),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffFFE7F2),
                    borderRadius: BorderRadius.circular(18)),
                padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 6.h),
                child: textBlack15w400('Captain Details'),
              ),
              sizedBoxHeight(13.h),
              Row(
                children: [
                  CircleAvatar(child: Image.asset('assets/images/profile.png')),
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
                                  textBlack18w400('Request sent to the admin'),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: buttonContainer('Call', Icons.phone_outlined,
                          context, 'Afrid Mulla')),
                  sizedBoxWidth(9.w),
                  buttonContainer(
                      'Email', Icons.email_outlined, context, 'Afrid Mulla'),
                ],
              ),
              sizedBoxHeight(18.h),
            ],
          ),
          sizedBoxHeight(20.h)
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

  Widget tab3(context) {
    return
        // Container(
        //     padding: EdgeInsets.symmetric(horizontal: 32.w),
        //     child: Center(
        //         child: textBlack18w400Center(
        //             'Sorry! No Products Available for rental.')))
        Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(15.h),
            Container(
              height: 63.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  sizedBoxWidth(13.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(
                        'assets/images/SVG/orderCompleted.svg',
                        height: 30.h,
                        color: AppColors.white,
                      ),
                      sizedBoxHeight(15.h)
                    ],
                  ),
                  sizedBoxWidth(11.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      textWhite15w400('25 orders completed in past 5 days'),
                      sizedBoxHeight(10.h)
                    ],
                  ),
                ],
              ),
            ),
            sizedBoxHeight(11.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                exchangedWidget(context, 'Exchanged', 5),
                exchangedWidget(context, 'Returned', 22)
              ],
            ),
            sizedBoxHeight(10.h),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              exchangedWidget(context, 'Cancelled', 5),
              exchangedWidget(context, 'Rental', 1)
            ]),
            sizedBoxHeight(37.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [textBlack18w400('Recent Orders'), sliderDropdown()],
            ),
            sizedBoxHeight(20.h),
            contentDetails(1, 'Necklace', 1200, 'Completed', 1),
            sizedBoxHeight(10.h),
            contentDetails(3, 'Anklet', 1000, 'Returned', 2),
            sizedBoxHeight(10.h),
            contentDetails(4, 'Earrings', 1500, 'Exchanged', 3),
            sizedBoxHeight(10.h),
            contentDetails(2, 'Armlet', 1200, 'Cancelled', 4),
            sizedBoxHeight(10.h),
            contentDetails(2, 'Nath', 1400, 'Exchanged', 3),
            sizedBoxHeight(110.h)
          ],
        ),
      ),
    );
  }

  Widget sliderDropdown() {
    return Container(
      width: 47,
      height: 40,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.05, color: Color(0xFFBFBFBF)),
          borderRadius: BorderRadius.circular(9),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F9E9E9E),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: PopupMenuButton(
          // padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.05, color: Color(0xFFBFBFBF)),
            borderRadius: BorderRadius.circular(9),
          ),
          child: SvgPicture.asset(
            'assets/images/SVG/sliders.svg',
            height: 19.h,
            fit: BoxFit.scaleDown,
          ),
          itemBuilder: (BuildContext context) {
            return [
              popuIitems('Completed'),
              popuIitems('Cancelled'),
              popuIitems('Returned'),
              popuIitems('Rental'),
              popuIitems('Exchanged', divider: false),
            ];
          }),
    );
  }

  PopupMenuItem popuIitems(String txt, {bool divider = true}) {
    return PopupMenuItem(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      sizedBoxHeight(divider ? 15.h : 0),
      Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [sizedBoxWidth(18.w), textBlack15w400(txt)]),
      SizedBox(width: 150.w),
      divider
          ? Column(
              children: [
                sizedBoxHeight(15.h),
                const Divider(),
              ],
            )
          : const SizedBox()
    ]));
  }

  Widget contentDetails(
      int order, String name, int price, String status, int int) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(7.w, 15.h, 15.w, 5.h),
      decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F606060),
              blurRadius: 4,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.15, color: const Color(0xFFBEBEBE))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/order$order.png', height: 68.h),
              sizedBoxWidth(15.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxHeight(6.h),
                  textBlack15w400(name),
                  sizedBoxHeight(2.h),
                  text575757_12w400('#1023566'),
                  sizedBoxHeight(10.h),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 6.h, horizontal: 5.w),
                    decoration: BoxDecoration(
                        color: AppColors.buttoncolour,
                        borderRadius: BorderRadius.circular(4)),
                    child: textWhite15w400('Quantity 2'),
                  )
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textPrimary15w700('₹ $price'),
                  const Icon(Icons.more_vert)
                ],
              ),
              sizedBoxHeight(25.h),
              recentOrderStatus(status, int),
              sizedBoxHeight(5.h),
              text575757_12w400('26 june, 3 PM')
            ],
          )
        ],
      ),
    );
  }

  Widget recentOrderStatus(String status, int int) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset('assets/images/SVG/order$status.svg'),
        textGreen15w400(''),
        Text(
          ' $status',
          style: TextStyle(
            fontSize: 15.sp,
            color: int == 1
                ? const Color(0xff019B3F)
                : int == 2
                    ? const Color(0xFFFB4D4D)
                    : int == 3
                        ? const Color(0xFFF5A623)
                        : const Color(0XFFE2104A),
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  Widget exchangedWidget(context, String txt, int int) {
    return Container(
      height: 74.h,
      width: MediaQuery.of(context).size.width / 2 - 21.w,
      decoration: BoxDecoration(
          color: const Color(0XFFFEF3F8),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxWidth(13.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              sizedBoxHeight(16.h),
              SvgPicture.asset('assets/images/SVG/order$txt.svg',
                  color: AppColors.buttoncolour),
            ],
          ),
          sizedBoxWidth(11.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textEE3764_15w700('$int'),
              textBlack15w400(txt),
            ],
          ),
        ],
      ),
    );
  }
}
