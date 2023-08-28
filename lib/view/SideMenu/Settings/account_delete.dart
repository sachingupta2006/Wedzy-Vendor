import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomTextArea.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';
import 'package:wedzy/resources/routes/route_name.dart';

import '../../../Utils/Common/CustomAppBarDynamic.dart';

class AccountDelete extends StatelessWidget {
  const AccountDelete({super.key});

  @override
  Widget build(BuildContext context) {
    var currentValue = 'Other'.obs;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.w),
        child: CustomButton(
          text: 'Submit',
          onTap: () {
            Get.toNamed(RouteName.loginScreen);
          },
        ),
      ),
      appBar: CustomAppBarDynamic(
        preferredSize: const Size.fromHeight(50),
        titleTxt: 'Accounts',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(15.h),
            text373434_18w400('Delete Account'),
            sizedBoxHeight(21.h),
            textBlack16w500('Why do you want to delete your account'),
            sizedBoxHeight(14.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              width: double.infinity,
              height: 50.h,
              color: const Color(0xFFFEF3F8),
              child: PopupMenuButton(
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.05, color: Color(0xFFBFBFBF)),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textBlack16w500(currentValue.value),
                        RotatedBox(
                            quarterTurns: 3,
                            child: Icon(
                              Icons.arrow_back_ios_new_sharp,
                              size: 24.h,
                              color: AppColors.buttoncolour,
                            ))
                      ],
                    ),
                  ),
                  // onSelected: (value) {
                  //   currentValue.value = value;
                  //   print("print ${currentValue.value}");
                  // },
                  itemBuilder: (BuildContext context) {
                    return [
                      popuIitems('Not satisfied with service', ontap: () {
                        currentValue.value = 'Not satisfied with service';
                      }),
                      popuIitems('No leads', ontap: () {
                        currentValue.value = 'No leads';
                      }),
                      popuIitems('Other', divider: false, ontap: () {
                        currentValue.value = 'Other';
                      }),
                    ];
                  }),
            ),
            sizedBoxHeight(36.h),
            Obx(() => Visibility(
                visible: currentValue.value == 'Other' ? true : false,
                replacement: const SizedBox(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textBlack16w500('Reason'),
                    sizedBoxHeight(8.h),
                    const Common_textarea(hint_text: '', maxline: 6),
                  ],
                )))
          ],
        ),
      ),
    );
  }

  PopupMenuItem popuIitems(String txt,
      {void Function()? ontap, bool divider = true}) {
    return PopupMenuItem(
        onTap: ontap,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          sizedBoxHeight(divider ? 15.h : 0),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [sizedBoxWidth(0.w), textBlack15w400(txt)]),
          SizedBox(width: 200.w),
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
}
