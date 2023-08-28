import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/CustomFormContainer.dart';
import 'package:wedzy/Utils/Common/custom_appbar.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';

import '../../Utils/themedata.dart';

class Registration1 extends StatefulWidget {
  const Registration1({super.key});

  @override
  State<Registration1> createState() => _Registration1State();
}

class _Registration1State extends State<Registration1> {
  final List addressList = [].obs;

  bool isChecked = false;
  bool isChecked2 = false;
  TextEditingController fullname = TextEditingController();
  TextEditingController brandname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController website = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController pincode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        preferredSize: const Size.fromHeight(50),
        titleTxt: 'Create Account',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              sizedBoxHeight(28.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 15.w,
                                  height: 15.h,
                                  decoration: const ShapeDecoration(
                                    color: Color(0x00D9D9D9),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 0.40,
                                          color: Color(0xFFEE3764)),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '1',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFFEE3764),
                                        fontSize: 10.sp,
                                        fontFamily: 'AvenirNextCyr',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.10,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                Text(
                                  'Details',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFFEE3764),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.15,
                                  ),
                                )
                              ],
                            ),
                            sizedBoxHeight(8.h),
                            Container(
                              width: 104.w,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1.w,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: const Color(0xFFEE3764),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 15.w,
                                  height: 15.h,
                                  decoration: const ShapeDecoration(
                                    color: Color(0x00D9D9D9),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 0.40,
                                          color: Color(0xFF909090)),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF909090),
                                        fontSize: 10.sp,
                                        fontFamily: 'AvenirNextCyr',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.10,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                Text(
                                  'ID Proof',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF909090),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.15,
                                  ),
                                )
                              ],
                            ),
                            sizedBoxHeight(8.h),
                            Container(
                              width: 104.w,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1.w,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: const Color(0xFF909090),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 15.w,
                                  height: 15.h,
                                  decoration: ShapeDecoration(
                                    color: const Color(0x00D9D9D9),
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 0.40.w,
                                          color: const Color(0xFF909090)),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '3',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF909090),
                                        fontSize: 10.sp,
                                        fontFamily: 'AvenirNextCyr',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.10,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                Text(
                                  'Store',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF909090),
                                    fontSize: 15.sp,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.15,
                                  ),
                                )
                              ],
                            ),
                            sizedBoxHeight(8.h),
                            Container(
                              width: 104.w,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1.w,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: const Color(0xFF909090),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    CustomRegistrationtextformfield(
                      label: "First Name Last Name",
                      leadingImage: "assets/images/userblack.svg",
                      hintText: "First Name Last Name",
                      controller: fullname,
                    ),
                    // CustomFormContainer(
                    //   leadingImage: "assets/images/userblack.svg",
                    //   hintText: "First Name Last Name",
                    // ),
                    sizedBoxHeight(40.h),
                    CustomRegistrationtextformfield(
                      leadingImage: "assets/images/brand.svg",
                      hintText: "What's Your Brand Name",
                      label: "What's Your Brand Name",
                      controller: brandname,
                    ),
                    sizedBoxHeight(40.h),
                    CustomRegistrationtextformfield(
                      leadingImage: "assets/images/mailblack.svg",
                      hintText: "Email",
                      label: 'Email',
                      controller: email,
                    ),
                    sizedBoxHeight(40.h),
                    CustomRegistrationtextformfield(
                      leadingImage: "assets/images/smartphoneblack.svg",
                      hintText: "Mobile",
                      label: 'Mobile',
                      controller: number,
                    ),
                    sizedBoxHeight(40.h),
                    CustomRegistrationtextformfield(
                      leadingImage: "assets/images/globe.svg",
                      hintText: "Website",
                      label: 'Website',
                      controller: website,
                    ),
                    sizedBoxHeight(40.h),
                    CustomRegistrationtextformfield(
                      leadingImage: "assets/images/mappin.svg",
                      hintText: "Which City Are You Based In",
                      label: 'Which City Are You Based In',
                      controller: city,
                    ),
                    sizedBoxHeight(40.h),
                    CustomRegistrationtextformfield(
                      leadingImage: "assets/images/mappin.svg",
                      hintText: "Pincode",
                      label: 'Pincode',
                      controller: pincode,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.75.w, color: const Color(0xFFEE3764)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          fillColor:
                              const MaterialStatePropertyAll(Color(0xFFEF2B7B)),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text(
                          'Do you have a physical location?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.15,
                          ),
                        )
                      ],
                    ),
                    isChecked
                        ? Container(
                            width: 320.w,

                            // height: 401.h,

                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.10, color: Color(0xFFCCCCCC)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              shadows: [
                                const BoxShadow(
                                  color: Color(0x3F575757),
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  addressWidget(),
                                  Obx(
                                    () => ListView.builder(
                                      physics: const BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: addressList.length,
                                      itemBuilder: (context, index) {
                                        return addressList[index];
                                      },
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      addressList.add(addressWidget());
                                    },
                                    child: Row(
                                      children: [
                                        const Icon(Icons.add_circle_outline),
                                        sizedBoxWidth(6.w),
                                        Text(
                                          'Add other business location',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xFF373434),
                                            fontSize: 15.sp,
                                            fontFamily: 'AvenirNextCyr',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        : const SizedBox(),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.75.w, color: const Color(0xFFEE3764)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          fillColor:
                              const MaterialStatePropertyAll(Color(0xFFEF2B7B)),
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked2 = value!;
                            });
                          },
                        ),
                        Text(
                          'Do you work remotely?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.15,
                          ),
                        )
                      ],
                    ),
                    sizedBoxHeight(40.h),
                    CustomButton(
                      text: 'Next',
                      onTap: () {
                        Get.toNamed("/registrationotp");
                      },
                    ),
                    sizedBoxHeight(13.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "I Already have an account ",
                          style: TextStyle(
                            color: const Color(0xFF373434),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.15,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed("/loginScreen");
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: const Color(0xFF373434),
                              fontSize: 15.sp,
                              fontFamily: 'AvenirNextCyr',
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.underline,
                              letterSpacing: 0.15,
                            ),
                          ),
                        )
                      ],
                    ),
                    sizedBoxHeight(100.h)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget addressWidget() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Add address of your business',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: const Color(0xFF373434),
          fontSize: 15.sp,
          fontFamily: 'AvenirNextCyr',
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
        ),
      ),
      sizedBoxHeight(15.h),
      Text(
        'Address line 1',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: const Color(0xFF999999),
          fontSize: 15.sp,
          fontFamily: 'AvenirNextCyr',
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
        ),
      ),
      sizedBoxHeight(7.h),
      TextFormField(
        decoration: InputDecoration(
          errorStyle: TextStyle(fontSize: 12.sp),
          contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
                const BorderSide(color: AppColors.cardDark, width: 0.50),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
                const BorderSide(color: AppColors.cardDark, width: 0.50),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
                const BorderSide(color: AppColors.cardDark, width: 0.50),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.red, width: 0.50),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.red, width: 0.50),
          ),
          hintStyle: TextStyle(
              color: const Color(0x80000000),
              fontSize: 16.sp,
              fontFamily: "Poppins"),
        ),
      ),
      sizedBoxHeight(6.h),
      Text(
        'Address line 2',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: const Color(0xFF999999),
          fontSize: 15.sp,
          fontFamily: 'AvenirNextCyr',
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
        ),
      ),
      sizedBoxHeight(7.h),
      TextFormField(
        decoration: InputDecoration(
          errorStyle: TextStyle(fontSize: 12.sp),
          contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
                const BorderSide(color: AppColors.cardDark, width: 0.50),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
                const BorderSide(color: AppColors.cardDark, width: 0.50),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
                const BorderSide(color: AppColors.cardDark, width: 0.50),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.red, width: 0.50),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.red, width: 0.50),
          ),
          hintStyle: TextStyle(
              color: const Color(0x80000000),
              fontSize: 16.sp,
              fontFamily: "Poppins"),
        ),
      ),
      sizedBoxHeight(6.h),
      Text(
        'Street',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: const Color(0xFF999999),
          fontSize: 15.sp,
          fontFamily: 'AvenirNextCyr',
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
        ),
      ),
      sizedBoxHeight(7),
      TextFormField(
        decoration: InputDecoration(
          errorStyle: TextStyle(fontSize: 12.sp),
          contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
                const BorderSide(color: AppColors.cardDark, width: 0.50),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
                const BorderSide(color: AppColors.cardDark, width: 0.50),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
                const BorderSide(color: AppColors.cardDark, width: 0.50),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.red, width: 0.50),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.red, width: 0.50),
          ),
          hintStyle: TextStyle(
              color: const Color(0x80000000),
              fontSize: 16.sp,
              fontFamily: "Poppins"),
        ),
      ),
      sizedBoxHeight(25.w),
    ]);
  }
}

class CustomRegistrationtextformfield extends StatefulWidget {
  CustomRegistrationtextformfield(
      {super.key,
      this.hintText,
      this.controller,
      this.leadingImage,
      this.trailingImage,
      this.usingPng,
      required this.label,
      this.multiLines});

  String? leadingImage;
  // final TextEditingController? ;
  final TextEditingController? controller;
  String? trailingImage;
  String? hintText;
  bool? usingPng;
  bool? multiLines;
  final String label;

  @override
  State<CustomRegistrationtextformfield> createState() =>
      _CustomRegistrationtextformfieldState();
}

class _CustomRegistrationtextformfieldState
    extends State<CustomRegistrationtextformfield> {
  // TextEditingController nameTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var activeTyping = false.obs;
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // if(widget.controller!.text.isNotEmpty)
            if (widget.controller!.text.isNotEmpty)
              Text(
                widget.label,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
              ),
            sizedBoxHeight(8.h),
            Container(
              width: double.infinity,
              height: 50,
              decoration: ShapeDecoration(
                color: Color(0xFFFEF3F8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                shadows: [
                  BoxShadow(
                    color: activeTyping.value
                        ? Color(0xFFFFC1DD)
                        : AppColors.transparent,
                    blurRadius: 0,
                    offset: Offset(1, 2),
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      onChanged: (_) => setState(() {}),
                      controller: widget.controller,
                      //     onChanged: (v){
                      //   setState(() {
                      //     if(v.isNotEmpty){
                      //       _labelText = widget.hintText;
                      //     }else{
                      //       _labelText = "";
                      //     }
                      //   });

                      // },

                      onTap: () {
                        activeTyping.value = true;
                      },
                      maxLines: widget.multiLines ?? false ? 5 : 1,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        prefixIcon: widget.leadingImage != null
                            ? Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 14, top: 15, bottom: 15),
                                child: widget.usingPng ?? false
                                    ? Image.asset(widget.leadingImage!)
                                    : SvgPicture.asset(
                                        widget
                                            .leadingImage!, // Replace with your SVG icon path
                                      ),
                              )
                            : null,
                        suffixIcon: widget.trailingImage != null
                            ? Padding(
                                padding: const EdgeInsets.only(
                                    right: 19, top: 15, bottom: 15),
                                child: SvgPicture.asset(widget
                                        .trailingImage! // Replace with your SVG icon path
                                    ),
                              )
                            : null,
                        border: InputBorder.none,
                        hintText: widget.hintText,
                        // labelText: widget.label,
                        hintStyle: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                color: Color(0xFF9F9F9F),
                                fontWeight: FontWeight.w400),
                        // labelStyle:   Theme.of(context)
                        //     .textTheme
                        //     .displayMedium!
                        //     .copyWith(
                        //         color: Colors.black,
                        //         fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

// TextFormField(
//           keyboardType: TextInputType.text,
//           autofocus: false,
//           textAlign: TextAlign.start,
//           onChanged: (v){
//             setState(() {
//               if(v.isNotEmpty){
//                 _labelText = 'Name';
//               }else{
//                 _labelText = "";
//               }
//             });

//           },
//           textInputAction: TextInputAction.done,
//           controller: nameTextEditingController,
//           style: TextStyle(
//               color: Colors.black87,
//               fontSize: 18,
//               fontWeight: FontWeight.w500),
//           decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(vertical: 15),
//             labelText: _labelText,
//             hintText: 'Name',
//             hintStyle: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500),
//             labelStyle: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500),
//             focusedBorder: OutlineInputBorder(
//                 borderSide:
//                     BorderSide(color: Colors.transparent, width: 1)),
//           ),
//         ),
