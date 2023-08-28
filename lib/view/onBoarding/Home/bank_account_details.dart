import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';

import '../../../Utils/Common/CustomFormContainer.dart';
import '../../../Utils/Common/sized_box.dart';
import '../../../Utils/Common/texts.dart';
import '../../../Utils/themedata.dart';

class BankAccountDetails extends StatelessWidget {
  const BankAccountDetails({super.key});

   buildverifiedifscdialog(context) {
    return showDialog(
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
            contentPadding: EdgeInsets.fromLTRB(69, 0, 69, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              side: BorderSide(
                  color: Get.isDarkMode ? Colors.grey : Color(0XFFFFFFFF)),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                sizedBoxHeight(17.h),
                Align(
                  alignment: Alignment.center,
                  child: Lottie.asset("assets/json/bookingdone.json",
                      height: 113.h),
                ),
                sizedBoxHeight(2.h),
                Text(
                  'Verification Successful',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 18.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                sizedBoxHeight(36.h),
              ],
            ),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    var ifsc = true.obs;
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
          titleTxt: 'Bank Account Details',
          preferredSize: const Size.fromHeight(50)),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text373434_15w400('Account holder name'),
              sizedBoxHeight(10.h),
              CustomFormContainer(),
              sizedBoxHeight(18.h),
              text373434_15w400('Account type'),
              sizedBoxHeight(10.h),
              CustomFormContainer(),
              sizedBoxHeight(18.h),
              text373434_15w400('Account number'),
              sizedBoxHeight(10.h),
              CustomFormContainer(),
              sizedBoxHeight(18.h),
              text373434_15w400('Re-enter account number'),
              sizedBoxHeight(10.h),
              CustomFormContainer(),
              sizedBoxHeight(18.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text373434_15w400('Do you have IFSC code '),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          ifsc.value = !ifsc.value;
                        },
                        child: CircleAvatar(
                          radius: 11.h,
                          backgroundColor: AppColors.buttoncolour,
                          child: CircleAvatar(
                            radius: 9.h,
                            backgroundColor: AppColors.white,
                            child: Obx(() => CircleAvatar(
                                  radius: 6.h,
                                  backgroundColor: ifsc.value
                                      ? AppColors.buttoncolour
                                      : AppColors.white,
                                )),
                          ),
                        ),
                      ),
                      sizedBoxWidth(7.w),
                      text373434_15w400('Yes'),
                      sizedBoxWidth(12.w),
                      GestureDetector(
                        onTap: () {
                          ifsc.value = !ifsc.value;
                        },
                        child: CircleAvatar(
                          radius: 11.h,
                          backgroundColor: AppColors.buttoncolour,
                          child: CircleAvatar(
                            radius: 9.h,
                            backgroundColor: AppColors.white,
                            child: Obx(() => CircleAvatar(
                                  radius: 6.h,
                                  backgroundColor: ifsc.value
                                      ? AppColors.white
                                      : AppColors.buttoncolour,
                                )),
                          ),
                        ),
                      ),
                      sizedBoxWidth(7.w),
                      text373434_15w400('No'),
                    ],
                  )
                ],
              ),
              sizedBoxHeight(16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: CustomFormContainer()),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 48.w,
                    child: CustomButton(text: 'Verify IFSC',onTap: (){
                     buildverifiedifscdialog(context);
                    }),
                  )
                ],
              ),
              sizedBoxHeight(26.h),
              Row(
                children: [
                  textBlack15w700('Bank Name:  '),
                  text373434_15w400('HDFC Bank')
                ],
              ),
              sizedBoxHeight(19.h),
              Row(
                children: [
                  textBlack15w700('City Name:  '),
                  text373434_15w400('Mumbai')
                ],
              ),
              sizedBoxHeight(19.h),
              Row(
                children: [
                  textBlack15w700('Branch Name:  '),
                  text373434_15w400('Mumbai')
                ],
              ),
              sizedBoxHeight(19.h),
            ],
          ),
        ),
      ),
    );
  }
}
