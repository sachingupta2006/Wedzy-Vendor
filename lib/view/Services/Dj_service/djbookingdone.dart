import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/appbarservices.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';

class Djbookingdone extends StatefulWidget {
  const Djbookingdone({super.key});

  @override
  State<Djbookingdone> createState() => _DjbookingdoneState();
}

class _DjbookingdoneState extends State<Djbookingdone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      CustomAppBarDynamic(titleTxt: "", preferredSize: Size.fromHeight(50)),
      // Appbarservices(titleTxt: ""),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            sizedBoxHeight(18.h),
            Lottie.asset("assets/json/bookingdone.json", height: 189.h),
            sizedBoxHeight(34.h),
            textBlack18w700('Onboarding Successful !'),
            sizedBoxHeight(5.h),
            textBlack15w400('Your Shop Onboarding is Successful'),
            sizedBoxHeight(1.h),
            textBlack15w400('Start Adding Your Products'),
            sizedBoxHeight(200.h),
            CustomButton(text: "Preview", onTap: () {
              Get.toNamed('/djshoppreview');
            }),
            sizedBoxHeight(40.h),
          ],
        ),
      )),
    );
  }
}
