import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/appbarservices.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/themedata.dart';

class Decoralbumpage extends StatefulWidget {
  const Decoralbumpage({super.key});

  @override
  State<Decoralbumpage> createState() => _DecoralbumpageState();
}

class _DecoralbumpageState extends State<Decoralbumpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: "Add Portfolio",
        preferredSize: Size.fromHeight(50),
      ),
      // Appbarservices(titleTxt: "  Add Portfolio"),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            sizedBoxHeight(12.h),
            Container(
              width: 328.w,
              // height: 95.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F939393),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 9.w, right: 5.w, top: 16.h, bottom: 16.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.buttoncolour,
                              radius: 14.w,
                              child: CircleAvatar(
                                  radius: 12.5.w,
                                  backgroundColor: AppColors.buttoncolour,
                                  child: SvgPicture.asset(
                                    "assets/images/check.svg",
                                    width: 10.w,
                                    height: 10.h,
                                  )),
                            ),
                            Text(
                              'Select\nService',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        // sizedBoxWidth(12.w),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.buttoncolour,
                              radius: 14.w,
                              child: CircleAvatar(
                                  radius: 12.5.w,
                                  backgroundColor: AppColors.buttoncolour,
                                  child: SvgPicture.asset(
                                    "assets/images/check.svg",
                                    width: 10.w,
                                    height: 10.h,
                                  )),
                            ),
                            Text(
                              'Add \nInformation',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        // sizedBoxWidth(12.w),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.buttoncolour,
                              radius: 14.w,
                              child: CircleAvatar(
                                radius: 12.5.w,
                                backgroundColor: AppColors.white,
                                child: Text(
                                  '3',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.buttoncolour,
                                    fontSize: 12.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Add \nPortfolio',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.buttoncolour,
                                fontSize: 13.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        // sizedBoxWidth(10.w),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 14.w,
                              child: CircleAvatar(
                                radius: 12.5.w,
                                backgroundColor: AppColors.white,
                                child: Text(
                                  '4',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Add \nPackage',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        // sizedBoxWidth(10.w),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 14.w,
                              child: CircleAvatar(
                                radius: 12.5.w,
                                backgroundColor: AppColors.white,
                                child: Text(
                                  '5',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Bookings\n',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.sp,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    sizedBoxHeight(10.w),
                    Container(
                      width: 305.w,
                      height: 5.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFF2F8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 120.w,
                            height: 5.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFEE3764),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            sizedBoxHeight(97.h),
            CustomTextFields(
              hint: "Add a title",
              textCapitalization: TextCapitalization.none,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a title";
                } else
                  return null;
              },
              // maxlength: 90,
              limitlength: 90,
              errortext: "Enter title",
            ),
            sizedBoxHeight(101.h),
            GestureDetector(
              onTap: () {
                Get.toNamed('/decorpackage');
              },
              child: Container(
                width: 327.w,
                height: 50.h,
                decoration: const ShapeDecoration(
                  color: Color(0x00D9D9D9),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFEF2B7B)),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/plus.svg",
                      width: 23.w,
                      height: 23.h,
                    ),
                    sizedBoxWidth(9.w),
                    Text(
                      'Select from gallery',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFEF2B7B),
                        fontSize: 15.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class CustomTextFields extends StatelessWidget {
  const CustomTextFields(
      {Key? key,
      this.controller,
      this.hint,
      this.errortext,
      this.ontap,
      this.limitlength,
      this.maxlength,
      this.onchanged,
      this.txtinptype,
      this.inputFormatters,
      this.textCapitalization,
      this.readOnly,
      this.validator})
      : super(key: key);

  final TextEditingController? controller;
  final String? hint;
  final String? errortext;
  final Function(String)? ontap;
  final int? limitlength;
  final int? maxlength;
  final Function(String)? onchanged;
  final TextInputType? txtinptype;
  final dynamic inputFormatters;
  final dynamic textCapitalization;
  final dynamic validator;
  final bool? readOnly;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      textCapitalization: textCapitalization,
      keyboardType: txtinptype ?? TextInputType.text,
      maxLength: maxlength,
      cursorColor: Colors.grey,
      style: TextStyle(
        color: Color(0xFF797979),
        fontSize: 18.sp,
        fontFamily: 'AvenirNextCyr',
        fontWeight: FontWeight.w400,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Color(0xFF797979),
          fontSize: 18.sp,
          fontFamily: 'AvenirNextCyr',
          fontWeight: FontWeight.w400,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: Color(0xFFEF2B7B)),
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(width: 1, color: Color(0xFFEF2B7B))),
      ),
      validator: validator,
      inputFormatters: inputFormatters,
      onSaved: (value) {
        ontap?.call;
      },
      onChanged: (value) {
        onchanged?.call(value);
      },
    );
  }
}
