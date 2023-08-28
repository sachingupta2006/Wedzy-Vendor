import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';
import '../../../Utils/Common/CustomFormContainer.dart';

class TaxDetails extends StatelessWidget {
  const TaxDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var gstIN = false.obs;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.w),
        child: CustomButton(
          text: 'Save',
          onTap: () {
            Get.back();
          },
        ),
      ),
      appBar: CustomAppBarDynamic(
          titleTxt: 'Tax Details', preferredSize: const Size.fromHeight(50)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    gstIN.value = !gstIN.value;
                  },
                  child: CircleAvatar(
                    radius: 11.h,
                    backgroundColor: AppColors.buttoncolour,
                    child: CircleAvatar(
                      radius: 9.h,
                      backgroundColor: AppColors.white,
                      child: Obx(() => CircleAvatar(
                            radius: 6.h,
                            backgroundColor: gstIN.value
                                ? AppColors.buttoncolour
                                : AppColors.white,
                          )),
                    ),
                  ),
                ),
                sizedBoxWidth(12.h),
                text373434_15w400('Have GSTIN Number'),
              ],
            ),
            sizedBoxHeight(27.h),
            text373434_15w400('Enter Your Tax Details*'),
            sizedBoxHeight(10.h),
            CustomFormContainer(),
            sizedBoxHeight(18.h),
            text373434_15w400('Seller legal name*'),
            sizedBoxHeight(10.h),
            CustomFormContainer(),
            sizedBoxHeight(18.h),
            text373434_15w400('GST Number*'),
            sizedBoxHeight(10.h),
            CustomFormContainer(),
            sizedBoxHeight(18.h),
            text373434_15w400('HSN Code*'),
            sizedBoxHeight(10.h),
            CustomFormContainer(),
            sizedBoxHeight(18.h),
          ],
        ),
      ),
    );
  }
}
