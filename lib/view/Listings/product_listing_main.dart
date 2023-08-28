import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';

import 'listing_products.dart';

class ProductListingMain extends StatelessWidget {
  const ProductListingMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        backArrow: false,
        titleTxt: 'Listings',
        preferredSize: Size.fromHeight(50),
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                listingExpansion('Wedding Wear', 3, 'Silk Bridal Lehenga Choli',
                    'Velvet bridal lehenga choli', 'Embroider bridal lehenga'),
                sizedBoxHeight(20.h),
                listingExpansion(
                    'Jewellery', 1, 'Necklase', 'Necklase', 'Necklase'),
                sizedBoxHeight(30.h),
              ],
            ),
          )),
    );
  }

  Widget listingExpansion(
      title, int image, String txt1, String txt2, String txt3) {
    var expandBool = false.obs;
    return Container(
      padding: EdgeInsets.fromLTRB(0, 12.h, 12.w, 12.h),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        shadows: const [
          BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 1),
              spreadRadius: 0)
        ],
      ),
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: expandBool.value,
          onExpansionChanged: (value) {
            expandBool.value = !expandBool.value;
          },
          trailing: Container(
            padding: EdgeInsets.fromLTRB(6.w, 6.h, 6.w, 6.h),
            decoration: ShapeDecoration(
              color: const Color(0xFFFEF3F8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: SvgPicture.asset('assets/images/SVG/downArrow.svg'),
          ),
          tilePadding: EdgeInsets.only(left: 12.w),
          leading: Container(
            width: 60.w,
            height: 60.h,
            decoration: ShapeDecoration(
              color: const Color(0xFFFEF3F8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: SvgPicture.asset('assets/images/SVG/$title.svg'),
          ),
          title: textBlack18w400(title),
          controlAffinity: ListTileControlAffinity.leading,
          childrenPadding: EdgeInsets.all(12.h),
          children: [
            expandedChildren(txt1, image),
            sizedBoxHeight(30.h),
            expandedChildren(txt2, image),
            sizedBoxHeight(30.h),
            expandedChildren(txt3, image),
          ],
        ),
      ),
    );
  }

  Widget expandedChildren(String txt, int image) {
    return Row(
      children: [
        Image.asset('assets/images/order$image.png', height: 60.h),
        sizedBoxWidth(10.w),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textBlack18w400(txt),
              sizedBoxHeight(4.h),
              GestureDetector(
                  onTap: () {
                    Get.to(() => ListingProducts(product: image == 3 ? 1 : 0));
                  },
                  child: textEF2B2B_15w700Underline('View'))
            ],
          ),
        ),
      ],
    );
  }
}
