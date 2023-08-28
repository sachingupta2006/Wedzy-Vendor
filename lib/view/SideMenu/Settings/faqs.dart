import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/themedata.dart';

class Faqs extends StatefulWidget {
  const Faqs({super.key});

  @override
  State<Faqs> createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
          titleTxt: "Frequently Asked Quetions",
          preferredSize: Size.fromHeight(50)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 21.h),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle:
                    TextStyle(color: Colors.grey.shade600, fontSize: 16.sp),
                prefixIcon:
                    // SvgPicture.asset(
                    //   "assets/images/search.svg",
                    //   // width: 24.w,
                    //   // height: 24.h,
                    // ),
                    Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 20.sp,
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(10.h),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.sp),
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xFF9B9B9B),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.sp),
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xFF9B9B9B),
                  ),
                ),
              ),
            ),
            sizedBoxHeight(24.h),
            Expanded(
              child: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: <Widget>[
                      ButtonsTabBar(
                        buttonMargin: EdgeInsets.symmetric(horizontal: 4.w),
                        contentPadding: EdgeInsets.symmetric(horizontal: 19.w),
                        radius: 25,
                        backgroundColor: const Color(0xFFEF2B7B),
                        unselectedBorderColor: const Color(0xFFF4F4F4),
                        borderWidth: 1,
                        borderColor: const Color(0xFFFFFFFF),
                        unselectedBackgroundColor: const Color(0xFFF4F4F4),
                        unselectedLabelStyle:
                            const TextStyle(color: Color(0xFF373434)),
                        labelStyle: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp,
                        ),
                        tabs: [
                          Tab(
                            text: "Promotions",
                          ),
                          Tab(
                            text: "Listings",
                          ),
                          Tab(
                            text: "Features",
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                            children: [FirstTab(), FirstTab(), FirstTab()]),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class FirstTab extends StatefulWidget {
  const FirstTab({super.key});

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          sizedBoxHeight(28.h),
          Expanded1(isExpanded: true),
          sizedBoxHeight(12.h),
          Expanded1(isExpanded: false),
          sizedBoxHeight(12.h),
          Expanded1(isExpanded: false),
          sizedBoxHeight(12.h),
          Expanded1(isExpanded: false),
          sizedBoxHeight(12.h),
          Expanded1(isExpanded: false),
          sizedBoxHeight(12.h),
          Expanded1(isExpanded: false),
        ],
      ),
    );
  }
}

class SecondTab extends StatefulWidget {
  const SecondTab({super.key});

  @override
  State<SecondTab> createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ThirdTab extends StatefulWidget {
  const ThirdTab({super.key});

  @override
  State<ThirdTab> createState() => _ThirdTabState();
}

class _ThirdTabState extends State<ThirdTab> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Expanded1 extends StatefulWidget {
  bool isExpanded;

  Expanded1({super.key, required this.isExpanded});

  @override
  State<Expanded1> createState() => _Expanded1State();
}

class _Expanded1State extends State<Expanded1> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: widget.isExpanded ? Color(0xffFEEFF3) : Color(0xffFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.fromLTRB(11.w, 13.h, 24.w, 19.h),
        initiallyExpanded: widget.isExpanded,
        onExpansionChanged: (bool expanding) {
          setState(() {
            widget.isExpanded = expanding;
          });
        },
        trailing: Container(
          width: 20.w,
          height: 20.h,
          decoration: ShapeDecoration(
            shape: OvalBorder(
              side: BorderSide(width: 0.50, color: Color(0xFFEE3764)),
            ),
          ),
          child: SvgPicture.asset(
            widget.isExpanded
                ? "assets/images/arrowdown.svg"
                : "assets/images/rightarrow.svg",
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lorem ipsum dolor sit amet ? ',
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 18.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        children: <Widget>[
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet fringilla, mattis ligula consectetur,',
            style: TextStyle(
              color: Color(0xFF373434),
              fontSize: 15.sp,
              fontFamily: 'AvenirNextCyr',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
