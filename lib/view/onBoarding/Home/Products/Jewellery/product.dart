import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/resources/routes/route_name.dart';

import '../../../../../Utils/Common/CustomAppBarDynamic.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        flexibleSpace: Container(
          height: 50,
          decoration: const BoxDecoration(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            'Product',
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.spMin,
              fontFamily: 'AvenirNextCyr',
              fontWeight: FontWeight.w700,
              color: Color(0xFFffffff),
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            decoration: ShapeDecoration(
              color: Color(0xffFEF3F8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(
                Icons.arrow_back,
                color: Color(0xFFEF2B7B),
              ),
            ),
          ),
          iconSize: 22.spMin,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/image31.png'))),
        child: Center(
          child: Container(
            width: 282,
            height: 391,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Color.fromRGBO(255, 255, 255, 0.29)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Jewellery',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.28,
                      ),
                    ),
                    sizedBoxHeight(25.h),
                    Text(
                      'Start adding your products',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.15,
                      ),
                    ),
                    sizedBoxHeight(10.h),
                    Text(
                      'Lorem ipsum dolor sit amet\nLorem ipsum amet',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.14,
                      ),
                    ),
                    sizedBoxHeight(40.h),
                    InkWell(
                        onTap: () {
                          Get.toNamed(RouteName.add_product);
                        },
                        child: Container(
                          width: 328.w,
                          height: 50.h,
                          decoration: ShapeDecoration(
                            color: Color(0xFFEF2B7B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/plus-circle.png'),
                                sizedBoxWidth(10.w),
                                Text(
                                  'Add Product',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
