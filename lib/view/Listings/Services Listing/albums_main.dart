import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/view/Listings/Services%20Listing/services_album.dart';
import '../../../Utils/Common/texts.dart';

class AlbumsMain extends StatelessWidget {
  const AlbumsMain({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/images/detailpreview1.png",
      "assets/images/detailpreview2.png",
      "assets/images/detailpreview2.png",
      "assets/images/detailpreview1.png",
      "assets/images/detailpreview1.png",
      "assets/images/detailpreview2.png",
      "assets/images/detailpreview2.png",
      "assets/images/detailpreview1.png",
      "assets/images/detailpreview1.png",
    ];
    return Scaffold(
      appBar: CustomAppBarDynamic(
          titleTxt: 'Albums', preferredSize: const Size.fromHeight(50)),
      body: GridView.builder(
        itemCount: 4,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 0.h),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => const ServicesAlbum());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 9.h),
                  width: MediaQuery.of(context).size.width / 2 - 24.w,
                  height: MediaQuery.of(context).size.width / 2 - 24.w,
                  // height: 124.h,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        images[index],
                      ),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 3.h, horizontal: 17.w),
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.6299999952316284),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: text373434_15w400('Portfolio'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFEF3F8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(3.w, 3.h, 4.w, 3.h),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/detailpreview3.svg"),
                                  textPrimary14w500('10'),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
