import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';
import 'package:wedzy/view/SideMenu/Blog/blogs_inside.dart';

class Blogs extends StatelessWidget {
  const Blogs({super.key});
  @override
  Widget build(BuildContext context) {
    List weddingImage = [
      'https://www.weddingchicks.com/wp-content/uploads/2022/06/theredearthvenue.jpg',
      'https://cdn.speedsize.com/60594423-b60e-4dfc-bb30-f46193ea9dfc/https://f.hubspotusercontent00.net/hubfs/5387157/outdoorceremony-galwaydowns-michellececil.jpg/mxw_2560,ns_atwebp,f_auto',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-EJElmHhyERl9Yhiya2PVM9PnKbM-8XbgpQ&usqp=CAU'
    ];
    return Scaffold(
      appBar: CustomAppBarDynamic(
          preferredSize: const Size.fromHeight(50), titleTxt: 'Blogs'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD1gtEJzLOmTK2agFvWdjaubAn5Q5Kv0lcUg&usqp=CAU',
                      fit: BoxFit.fill,
                      height: 297.h,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20.w, 0, 50.w, 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          textWhite18w700('Wedding'),
                          sizedBoxHeight(10.h),
                          textWhite15w700(
                              '''Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. '''),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Column(
                      children: [
                        sizedBoxHeight(20.h),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.end,
                        //   children: [
                        //     const Icon(Icons.bookmark_border_outlined,
                        //         color: AppColors.white),
                        //     sizedBoxWidth(20.w),
                        //     SvgPicture.asset('assets/images/SVG/forward.svg'),
                        //     sizedBoxWidth(26.w)
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(24.h),
              contentRow(weddingImage[0]),
              contentRow(weddingImage[1]),
              contentRow(weddingImage[2]),
            ],
          ),
        ),
      ),
    );
  }

  Widget contentRow(String imgAddress) {
    return GestureDetector(
      onTap: () {
        Get.to(() => BlogsInside(
              imgAddress: imgAddress,
            ));
      },
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 89,
                height: 78,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imgAddress),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              sizedBoxWidth(15.w),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textC2C2C2_15w400('Venue'),
                    sizedBoxHeight(2.h),
                    text373434_15w400(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ')
                  ],
                ),
              )
            ],
          ),
          sizedBoxHeight(22.h)
        ],
      ),
    );
  }
}
