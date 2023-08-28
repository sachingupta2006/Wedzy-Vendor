import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';

import '../../../Utils/Common/sized_box.dart';
import '../../../Utils/Common/texts.dart';
import '../../../Utils/themedata.dart';

class Signature extends StatelessWidget {
  const Signature({super.key});

  @override
  Widget build(BuildContext context) {
    var uploadBool = true.obs;
    return Scaffold(
      bottomNavigationBar:
      //  Obx(() => 
      Padding(
            padding: EdgeInsets.all(16.w),
            child:
                // uploadBool.value
                //     ? twoButton(context, uploadBool)
                //     :
                CustomButton(
              text: 'Save',
              onTap: () {
                Get.back();
              },
            ),
          ),
          // ),
      appBar: CustomAppBarDynamic(
          titleTxt: 'Signature', preferredSize: const Size.fromHeight(50)),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHeight(10.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row(
                  //   children: [
                  //     GestureDetector(
                  //       onTap: () {
                  //         uploadBool.value = !uploadBool.value;
                  //       },
                  //       child: CircleAvatar(
                  //         radius: 11.h,
                  //         backgroundColor: AppColors.buttoncolour,
                  //         child: CircleAvatar(
                  //           radius: 9.h,
                  //           backgroundColor: AppColors.white,
                  //           child: Obx(() => CircleAvatar(
                  //                 radius: 6.h,
                  //                 backgroundColor: uploadBool.value
                  //                     ? AppColors.buttoncolour
                  //                     : AppColors.white,
                  //               )),
                  //         ),
                  //       ),
                  //     ),
                  //     sizedBoxWidth(14.w),
                  //     text373434_15w400('Draw my signature on the screen'),
                  //   ],
                  // ),
                  // sizedBoxHeight(20.w),
                  Row(
                    children: [
                      // GestureDetector(
                      //   onTap: () {
                      //     uploadBool.value = !uploadBool.value;
                      //   },
                      //   child: CircleAvatar(
                      //     radius: 11.h,
                      //     backgroundColor: AppColors.buttoncolour,
                      //     child: CircleAvatar(
                      //       radius: 9.h,
                      //       backgroundColor: AppColors.white,
                      //       child: Obx(() => CircleAvatar(
                      //             radius: 6.h,
                      //             backgroundColor: uploadBool.value
                      //                 ? AppColors.white
                      //                 : AppColors.buttoncolour,
                      //           )),
                      //     ),
                      //   ),
                      // ),
                      // sizedBoxWidth(14.w),
                      text373434_15w400('Upload my signature'),
                    ],
                  ),
                  sizedBoxHeight(20.h),
                  Obx(() => Visibility(
                        // replacement:
                        // Column(
                        //   children: [
                        //     text707070_15w400(
                        //         'Upload an image of your signature which will be used on the invoices sent to customers'),
                        //     sizedBoxHeight(22.h),
                        //     textBlack15w700('What To Upload?'),
                        //     sizedBoxHeight(15.h),
                        //     rowText('Sign on a white paper and upload the image'),
                        //     sizedBoxHeight(15.h),
                        //     rowText('Signature should be clear and in focus'),
                        //     sizedBoxHeight(15.h),
                        //     rowText('Only upload jpeg or jpg format'),
                        //     sizedBoxHeight(15.h),
                        //     rowText('Image size should not exceed 2 MB'),
                        //     sizedBoxHeight(33.h),
                        //     FDottedLine(
                        //       corner: FDottedLineCorner.all(5),
                        //       width: double.infinity,
                        //       strokeWidth: 0.25.w,
                        //       color: AppColors.buttoncolour,
                        //       child: Center(
                        //         child: Column(
                        //           children: [
                        //             sizedBoxHeight(25.h),
                        //             Icon(Icons.file_copy,
                        //                 size: 54.h,
                        //                 color: const Color(0xff4298EF)),
                        //             sizedBoxHeight(5.h),
                        //             text373434_15w400('Upload Your Signature'),
                        //             sizedBoxHeight(30.h),
                        //           ],
                        //         ),
                        //       ),
                        //     )
                        //   ],
                        // ),
                        visible: uploadBool.value,
                        child: Column(
                          children: [
                            text707070_15w400(
                                'Upload an image of your signature which will be used on the invoices sent to customers'),
                            sizedBoxHeight(22.h),
                            textBlack15w700('What To Upload?'),
                            sizedBoxHeight(15.h),
                            rowText(
                                'Sign on a white paper and upload the image'),
                            sizedBoxHeight(15.h),
                            rowText('Signature should be clear and in focus'),
                            sizedBoxHeight(15.h),
                            rowText('Only upload jpeg or jpg format'),
                            sizedBoxHeight(15.h),
                            rowText('Image size should not exceed 2 MB'),
                            sizedBoxHeight(33.h),
                            FDottedLine(
                              corner: FDottedLineCorner.all(5),
                              width: double.infinity,
                              strokeWidth: 0.25.w,
                              color: AppColors.buttoncolour,
                              child: Center(
                                child: Column(
                                  children: [
                                    sizedBoxHeight(25.h),
                                    Icon(Icons.file_copy,
                                        size: 54.h,
                                        color: const Color(0xff4298EF)),
                                    sizedBoxHeight(5.h),
                                    text373434_15w400('Upload Your Signature'),
                                    sizedBoxHeight(30.h),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        //  Column(
                        //   children: [
                        //     Container(
                        //       width: double.infinity,
                        //       height: 369.h,
                        //       decoration: const ShapeDecoration(
                        //         shape: RoundedRectangleBorder(
                        //           side: BorderSide(
                        //               width: 0.25, color: Color(0xFF9B9B9B)),
                        //         ),
                        //       ),
                        //     ),
                        //     sizedBoxHeight(15.h),
                        //     textEF2B2B_15w700Underline('Clear Signature')
                        //   ],
                        // ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget rowText(String txt) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(radius: 3.h, backgroundColor: const Color(0xFFEE3764)),
        sizedBoxWidth(8.w),
        text707070_15w400(txt)
      ],
    );
  }

  Widget twoButton(context, uploadBool) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 2 - 24.w,
          child: CustomButton(
            text: 'Back',
            onTap: () {
              Get.back();
            },
          ),
        ),
        GestureDetector(
          onTap: () {
            uploadBool.value = false;
          },
          child: Container(
            height: 50.h,
            width: MediaQuery.of(context).size.width / 2 - 24.w,
            decoration: const ShapeDecoration(
              color: Color(0x00D9D9D9),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.25, color: Color(0xFFEF2B7B)),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
            child: Center(
              child: textPrimary15w700('Done'),
            ),
          ),
        ),
      ],
    );
  }
}
