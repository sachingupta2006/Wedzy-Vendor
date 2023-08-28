import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';
import 'package:wedzy/view/Listings/product_listing_main.dart';
import 'package:wedzy/view/Orders/orders.dart';
import 'package:wedzy/view/SideMenu/Profile.dart';
import 'package:wedzy/view/onBoarding/Home/home.dart';
import '../../view/Listings/Services Listing/services_listing.dart';
import '../../view/Task/task.dart';
import '../../view/onBoarding/Home/nav_drawer.dart';
import '../../view/onBoarding/bookings.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({super.key, required this.pageIndex});
  int pageIndex;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  final _selectedIndex = 2.obs;

  @override
  Widget build(BuildContext context) {
    final List widgetOptions = [
      const Task(),
      widget.pageIndex == 0
          ? Bookings(
              backArrow: false,
              selectedPage: 0,
            )
          :  Orders(backArrow: false),
      Home(index: widget.pageIndex),
      widget.pageIndex == 0
          ? const ServicesListing()
          : const ProductListingMain(),
      const Profile(),
    ];
    return Obx(() => Scaffold(
          floatingActionButton: _selectedIndex.value == 0
              ? FloatingActionButton(
                  backgroundColor: AppColors.buttoncolour,
                  onPressed: () {
                    taskAddButtonDialog(context);
                  },
                  child: const Icon(
                    Icons.add,
                    color: AppColors.white,
                  ),
                )
              : null,
          key: scaffoldKey,
          drawer: NavDrawer(requestIndex: widget.pageIndex),
          extendBody: true,
          body: Obx(() => widgetOptions.elementAt(_selectedIndex.value)),
          bottomNavigationBar: CurvedNavigationBar(
              // animationDuration: const Duration(milliseconds: 900),
              index: 2,
              backgroundColor: AppColors.buttoncolour,
              buttonBackgroundColor: AppColors.buttoncolour,
              height: 60.h,
              onTap: (value) {
                _selectedIndex.value = value;
              },
              items: [
                bottomWidget('assets/images/check-square.svg', 'Task', 0),
                bottomWidget(
                    widget.pageIndex == 0
                        ? 'assets/images/calendar.svg'
                        : 'assets/images/SVG/shopping.svg',
                    widget.pageIndex == 0 ? 'Bookings' : 'Orders',
                    1),
                bottomWidget('assets/images/SVG/Dashboard.svg', 'Dashboard', 2),
                bottomWidget('assets/images/file-text.svg', 'Listings', 3),
                bottomWidget(
                    'assets/images/ProfileBottomBar.svg', 'Profile', 4),
              ]),
          // bottomNavigationBar: AnimatedNotchBottomBar(
          //   notchBottomBarController: notchController,
          //   color: Colors.white,
          //   showLabel: true,
          //   notchColor: const Color(0xFFEE3764),
          //   bottomBarItems: [
          //     BottomBarItem(
          //       inActiveItem: SvgPicture.asset('assets/images/check-square.svg'),
          //       activeItem: SvgPicture.asset('assets/images/check-square.svg',
          //           color: Colors.white),
          //       itemLabel: 'Task',
          //     ),
          //     BottomBarItem(
          //       inActiveItem: SvgPicture.asset(
          //         widget.pageIndex == 0
          //             ? 'assets/images/calendar.svg'
          //             : 'assets/images/SVG/shopping.svg',
          //       ),
          //       activeItem: SvgPicture.asset(
          //           widget.pageIndex == 0
          //               ? 'assets/images/calendar.svg'
          //               : 'assets/images/SVG/shopping.svg',
          //           color: Colors.white),
          //       itemLabel: widget.pageIndex == 0 ? 'Bookings' : 'Orders',
          //     ),
          //     BottomBarItem(
          //       inActiveItem: SvgPicture.asset('assets/images/SVG/Dashboard.svg'),
          //       activeItem: SvgPicture.asset('assets/images/SVG/Dashboard.svg',
          //           color: Colors.white),
          //       itemLabel: 'Dashboard',
          //     ),
          //     BottomBarItem(
          //       inActiveItem: SvgPicture.asset('assets/images/file-text.svg'),
          //       activeItem: SvgPicture.asset('assets/images/file-text.svg',
          //           color: Colors.white),
          //       itemLabel: 'Listings',
          //     ),
          //     BottomBarItem(
          //       inActiveItem:
          //           SvgPicture.asset('assets/images/ProfileBottomBar.svg'),
          //       activeItem: SvgPicture.asset('assets/images/ProfileBottomBar.svg',
          //           color: Colors.white),
          //       itemLabel: 'Profile',
          //     ),
          //   ],
          //   itemLabelStyle: TextStyle(
          //     color: Colors.black,
          //     fontSize: 11.5.spMin,
          //     fontFamily: 'AvenirNextCyr',
          //     fontWeight: FontWeight.w400,
          //   ),
          //   removeMargins: true,
          //   bottomBarWidth: 500,
          //   durationInMilliSeconds: 300,
          //   onTap: (value) {
          //     _selectedIndex.value = value;
          //   },
          // ),
        ));
  }

  Widget bottomWidget(String svg, String title, int position) {
    return Obx(() => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              svg,
              color: _selectedIndex.value == position ? AppColors.white : null,
            ),
            _selectedIndex.value != position
                ? text373737_12w400(title)
                : const SizedBox()
          ],
        ));
  }

  taskAddButtonDialog(context) {
    var checkBool1 = false.obs;
    var checkBool2 = false.obs;
    return showDialog(
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            insetPadding: const EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: const Color(0XFFFFFFFF),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              side: BorderSide(color: Color(0XFFFFFFFF)),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   width: 106,
                //   height: 37,
                //   decoration: ShapeDecoration(
                //     color: const Color(0x00D9D9D9),
                //     shape: RoundedRectangleBorder(
                //       side: const BorderSide(
                //           width: 0.40, color: Color(0xFFEE3764)),
                //       borderRadius: BorderRadius.circular(24.50),
                //     ),
                //   ),
                //   child: InkWell(
                //     onTap: () {
                //       // _openModalBottomSheet(context);
                //     },
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       children: [
                //         SvgPicture.asset('assets/images/calendar.svg'),
                //         sizedBoxWidth(8.w),
                //         text373434_15w400('Today')
                //       ],
                //     ),
                //   ),
                datePickerTask(), sizedBoxHeight(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Obx(
                      () =>
                          //  Transform.translate( offset: const Offset(-24, 0), child:
                          Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                        side: BorderSide(
                            color: AppColors.buttoncolour, width: 2.h),
                        activeColor: AppColors.buttoncolour,
                        value: checkBool1.value,
                        onChanged: (value) {
                          checkBool1.value = true;
                          checkBool2.value = false;
                        },
                      ),
                      // ),
                    ),
                    text373434_15w400('Business'),
                    sizedBoxWidth(8.w),
                    Obx(
                      () => Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                        side: BorderSide(
                            color: AppColors.buttoncolour, width: 2.h),
                        activeColor: AppColors.buttoncolour,
                        value: checkBool2.value,
                        onChanged: (value) {
                          checkBool2.value = true;
                          checkBool1.value = false;
                        },
                      ),
                    ),
                    text373434_15w400('Personal'),
                  ],
                ),
                sizedBoxHeight(11.h),
                TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Type...',
                        hintStyle: TextStyle(
                          color: Color(0xFF9B9B9B),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF9B9B9B), width: 0.25)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF9B9B9B), width: 0.25)),
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF9B9B9B), width: 0.25)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF9B9B9B), width: 0.25))),
                    maxLines: 5),
                sizedBoxHeight(23.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          width: 117.w,
                          height: 45.h,
                          decoration: const ShapeDecoration(
                              color: Color(0xFFEF2B7B),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)))),
                          child: Center(child: textWhite15w700('+ New Task')),
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
}

class datePickerTask extends StatefulWidget {
  datePickerTask(
      {super.key,
      this.hintText,
      this.leadingImage,
      this.trailingImage,
      this.usingPng,
      this.onTap,
      this.multiLines});

  String? leadingImage;
  TextEditingController dateController = TextEditingController();

  void Function()? onTap;
  String? trailingImage;

  String? hintText;
  bool? usingPng;
  bool? multiLines;

  @override
  State<datePickerTask> createState() => _datePickerTaskState();
}

class _datePickerTaskState extends State<datePickerTask> {
  DateTime? _selectedDate;

  TextEditingController dateController = TextEditingController();

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1922),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: AppColors.buttoncolour,
                onPrimary: AppColors.white,
                onSurface: Colors.black,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: AppColors.buttoncolour,
                ),
              ),
            ),
            child: child!);
      },
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
        dateController.text =
            "  ${_selectedDate!.day.toString()}/${_selectedDate!.month.toString().padLeft(2, '0')}/${_selectedDate!.year.toString().padLeft(2, '0')}";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // var activeTyping = false.obs;
    return InkWell(
      onTap: () {
        _presentDatePicker();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        // width: 106,
        height: 37,
        decoration: ShapeDecoration(
          color: const Color(0x00D9D9D9),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.40, color: Color(0xFFEE3764)),
            borderRadius: BorderRadius.circular(24.50),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/calendar.svg'),
            sizedBoxWidth(8.w),
            text373434_15w400(
                dateController.text.isEmpty ? 'Today' : dateController.text)
          ],
        ),
      ),
    );
  }
}
