import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_appbar.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';

import '../../resources/routes/route_name.dart';
import '../../temproryHomeRoute.dart';

class Policy extends StatefulWidget {
  const Policy({super.key});

  @override
  State<Policy> createState() => _PolicyState();
}

class _PolicyState extends State<Policy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: "Policy standards",
        preferredSize: const Size.fromHeight(50),
      ),
      // AppBar(
      //   backgroundColor: AppColors.white,
      //   title: customAppBar(text: "Policy standards"),
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      //   titleSpacing: 0,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizedBoxHeight(26.h),
              PolicyExpanded(
                isExpanded: true,
              ),
              PolicyExpanded2(isExpanded2: false),
              PolicyExpanded3(isExpanded3: false),
              sizedBoxHeight(190.h),
              CustomButton(
                  text: "Save",
                  onTap: () {
                    // Get.to(() => const TempororyHomeRoute());
                    Get.back();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class PolicyExpanded extends StatefulWidget {
  bool isExpanded;

  PolicyExpanded({super.key, required this.isExpanded});

  @override
  State<PolicyExpanded> createState() => _PolicyExpandedState();
}

class _PolicyExpandedState extends State<PolicyExpanded> {
  @override
  Widget build(BuildContext context) {
    return widget.isExpanded
        ? SizedBox(
            width: 351.w,
            // height: 145.h,
            child: Card(
              elevation: 2,
              color: const Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              // Container(
              //   // width: 358.w,
              //   // height: 70.h,
              //   decoration: BoxDecoration(
              //     color: AppColors.white,
              //     borderRadius: BorderRadius.circular(10.r),
              //   ),
              child: ExpansionTile(
                childrenPadding: EdgeInsets.only(
                    left: 16.w, right: 0.w, bottom: 12.h, top: 28.h),
                initiallyExpanded: widget.isExpanded,
                onExpansionChanged: (bool expanding) {
                  setState(() {
                    widget.isExpanded = expanding;
                  });
                },
                trailing: SvgPicture.asset(
                  widget.isExpanded
                      ? "assets/images/arrowup.svg"
                      : "assets/images/arrowdown.svg",
                  // width: 30.w,
                  // height: 30.h,
                ),
                title: Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Apply Return Policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                          // height: 27.h,
                          // letterSpacing: 0.18,
                        ),
                      )
                    ],
                  ),
                ),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 25.h),
                        child: Text(
                          'Days :',
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF373434),
                            fontSize: 18.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      sizedBoxWidth(17.w),
                      Feedtextformfield(
                        hintText: "",
                        validatorText: "Please Enter Days",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Days";
                          }
                          return null;
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        : Column(
            children: [
              Container(
                // width: 358.w,
                // height: 70.h,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: ExpansionTile(
                  childrenPadding: EdgeInsets.only(
                      left: 0.w, right: 0.w, bottom: 8.h, top: 10.h),
                  initiallyExpanded: widget.isExpanded,
                  onExpansionChanged: (bool expanding) {
                    setState(() {
                      widget.isExpanded = expanding;
                    });
                  },
                  trailing: SvgPicture.asset(
                    "assets/images/arrowdown.svg",
                    // width: 30.w,
                    // height: 30.h,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Apply Return Policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                          // height: 27.h,
                          // letterSpacing: 0.18,
                        ),
                      )
                    ],
                  ),
                  children: <Widget>[],
                ),
              ),
              widget.isExpanded
                  ? const SizedBox()
                  : const Divider(
                      thickness: 1,
                      color: Color(0xff6C6C6C),
                    )
            ],
          );
  }
}

class PolicyExpanded2 extends StatefulWidget {
  bool isExpanded2;

  PolicyExpanded2({super.key, required this.isExpanded2});

  @override
  State<PolicyExpanded2> createState() => _PolicyExpanded2State();
}

class _PolicyExpanded2State extends State<PolicyExpanded2> {
  @override
  Widget build(BuildContext context) {
    final List cancellationFieldRowList = [].obs;

    return widget.isExpanded2
        ? SizedBox(
            width: 351.w,
            // height: 145.h,
            child: Card(
              elevation: 2,
              color: const Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              // Container(
              //   // width: 358.w,
              //   // height: 70.h,
              //   decoration: BoxDecoration(
              //     color: AppColors.white,
              //     borderRadius: BorderRadius.circular(10.r),
              //   ),
              child: ExpansionTile(
                childrenPadding: EdgeInsets.only(
                    left: 8.w, right: 6.w, bottom: 32.h, top: 28.h),
                initiallyExpanded: widget.isExpanded2,
                onExpansionChanged: (bool expanding) {
                  setState(() {
                    widget.isExpanded2 = expanding;
                  });
                },
                trailing: SvgPicture.asset(
                  widget.isExpanded2
                      ? "assets/images/arrowup.svg"
                      : "assets/images/arrowdown.svg",
                  // width: 30.w,
                  // height: 30.h,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Apply Cancellation Policy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      textBlack15w400('Month'),
                      sizedBoxWidth(72.w),
                      textBlack15w400('Day'),
                      sizedBoxWidth(81.w),
                      textBlack15w400('Percentage')
                    ],
                  ),
                  sizedBoxHeight(4.h),
                  cancellationTextFieldRow(),
                  Obx(
                    () => ListView.builder(
                      shrinkWrap: true,
                      itemCount: cancellationFieldRowList.length,
                      itemBuilder: (context, index) {
                        return cancellationFieldRowList[index];
                      },
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/images/plus.svg",
                          width: 9.w, height: 9.h),
                      sizedBoxWidth(5.w),
                      InkWell(
                          onTap: () {
                            cancellationFieldRowList
                                .add(cancellationTextFieldRow());
                          },
                          child: textPrimary15w700('Add more'))
                    ],
                  )
                ],
              ),
            ),
          )
        : Column(
            children: [
              Container(
                // width: 358.w,
                // height: 70.h,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: ExpansionTile(
                  childrenPadding: EdgeInsets.only(
                      left: 0.w, right: 0.w, bottom: 8.h, top: 10.h),
                  initiallyExpanded: widget.isExpanded2,
                  onExpansionChanged: (bool expanding) {
                    setState(() {
                      widget.isExpanded2 = expanding;
                    });
                  },
                  trailing: SvgPicture.asset(
                    "assets/images/arrowdown.svg",
                    // width: 30.w,
                    // height: 30.h,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Apply Cancellation Policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                          // height: 27.h,
                          // letterSpacing: 0.18,
                        ),
                      )
                    ],
                  ),
                  children: <Widget>[],
                ),
              ),
              widget.isExpanded2
                  ? const SizedBox()
                  : const Divider(
                      thickness: 1,
                      color: Color(0xff6C6C6C),
                    )
            ],
          );
  }
}

Widget cancellationTextFieldRow() {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 110.w,
            height: 42.h,
            child: RequiredDropdownBtn(hint: "Select month", items: [
              "January",
              "February",
              "March",
              "April",
              "May",
              "June",
              "July",
              "August",
              "September",
              "October",
              "November",
              "December"
            ]),
            // TextFormField(
            //   keyboardType: TextInputType.number,
            //   // maxLength: 2,
            //   style: TextStyle(
            //     fontSize: 16.sp,
            //     fontWeight: FontWeight.w500,
            //   ),
            //   readOnly: false,
            //   autovalidateMode: AutovalidateMode.onUserInteraction,
            //   cursorColor: Colors.black,
            //   textAlign: TextAlign.center,
            //   decoration: InputDecoration(
            //     counterText: '',
            //     errorStyle: TextStyle(fontSize: 16.sp),
            //     contentPadding: EdgeInsets.all(8.h), isDense: true,
            //     filled: true,
            //     fillColor: const Color(0xffFEF3F8),
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8.r),
            //       borderSide: BorderSide(
            //           color: const Color(0xffFEF3F8).withOpacity(0), width: 1),
            //     ),
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8.r),
            //       borderSide: BorderSide(
            //           color: const Color(0xffFEF3F8).withOpacity(0), width: 1),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8.r),
            //       borderSide: BorderSide(
            //           color: const Color(0xffFEF3F8).withOpacity(0), width: 1),
            //     ),
            //     errorBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8),
            //       borderSide: const BorderSide(color: Colors.red, width: 1),
            //     ),
            //     focusedErrorBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8),
            //       borderSide: const BorderSide(color: Colors.red, width: 1),
            //     ),
            //     hintStyle: TextStyle(
            //         color: Colors.black,
            //         fontWeight: FontWeight.w500,
            //         fontFamily: "Poppins",
            //         fontSize: 16.sp),
            //     hintText: "",
            //     // helperText: "",
            //   ),
            //   validator: (value) {
            //     if (value!.isEmpty) {
            //       return '';
            //     }
            //     return null;
            //   },
            // ),
          ),
          sizedBoxWidth(7.w),
          SizedBox(
            width: 100.w,
            // height: 35.h,
            child: TextFormField(
              maxLength: 2,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              readOnly: false,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              cursorColor: Colors.black,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8.h), isDense: true,

                counterText: '',
                errorStyle: TextStyle(fontSize: 16.sp),
                filled: true,
                fillColor: const Color(0xffFEF3F8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                      color: const Color(0xffFEF3F8).withOpacity(0), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                      color: const Color(0xffFEF3F8).withOpacity(0), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                      color: const Color(0xffFEF3F8).withOpacity(0), width: 1),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.red, width: 1),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.red, width: 1),
                ),
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    fontSize: 16.sp),
                hintText: "",
                // helperText: "",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
          ),
          sizedBoxWidth(7.w),
          SizedBox(
            width: 100.w,
            // height: 35.h,
            child: TextFormField(
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              readOnly: false,
              keyboardType: TextInputType.number,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              cursorColor: Colors.black,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8.h), isDense: true,

                errorStyle: TextStyle(fontSize: 16.sp),
                // contentPadding: EdgeInsets.all(17.h),
                filled: true,
                fillColor: const Color(0xffFEF3F8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                      color: const Color(0xffFEF3F8).withOpacity(0), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                      color: const Color(0xffFEF3F8).withOpacity(0), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                      color: const Color(0xffFEF3F8).withOpacity(0), width: 1),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.red, width: 1),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.red, width: 1),
                ),
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    fontSize: 16.sp),
                hintText: "",
                // helperText: "",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
          ),
        ],
      ),
      sizedBoxHeight(10.h),
    ],
  );
}

class PolicyExpanded3 extends StatefulWidget {
  bool isExpanded3;

  PolicyExpanded3({super.key, required this.isExpanded3});

  @override
  State<PolicyExpanded3> createState() => _PolicyExpanded3State();
}

class _PolicyExpanded3State extends State<PolicyExpanded3> {
  @override
  Widget build(BuildContext context) {
    return widget.isExpanded3
        ? SizedBox(
            width: 351.w,
            // height: 145.h,
            child: Card(
              elevation: 2,
              color: const Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              // Container(
              //   // width: 358.w,
              //   // height: 70.h,
              //   decoration: BoxDecoration(
              //     color: AppColors.white,
              //     borderRadius: BorderRadius.circular(10.r),
              //   ),
              child: ExpansionTile(
                childrenPadding: EdgeInsets.only(
                    left: 16.w, right: 0.w, bottom: 12.h, top: 28.h),
                initiallyExpanded: widget.isExpanded3,
                onExpansionChanged: (bool expanding) {
                  setState(() {
                    widget.isExpanded3 = expanding;
                  });
                },
                trailing: SvgPicture.asset(
                  widget.isExpanded3
                      ? "assets/images/arrowup.svg"
                      : "assets/images/arrowdown.svg",
                  // width: 30.w,
                  // height: 30.h,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Apply Exchange Policy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                        // height: 27.h,
                        // letterSpacing: 0.18,
                      ),
                    )
                  ],
                ),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 25.h),
                        child: Text(
                          'Days :',
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF373434),
                            fontSize: 18.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      sizedBoxWidth(17.w),
                      Feedtextformfield(
                        hintText: "",
                        validatorText: "Please Enter Days",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Days";
                          }
                          return null;
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        : Column(
            children: [
              Container(
                // width: 358.w,
                // height: 70.h,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: ExpansionTile(
                  childrenPadding: EdgeInsets.only(
                      left: 0.w, right: 0.w, bottom: 8.h, top: 10.h),
                  initiallyExpanded: widget.isExpanded3,
                  onExpansionChanged: (bool expanding) {
                    setState(() {
                      widget.isExpanded3 = expanding;
                    });
                  },
                  trailing: SvgPicture.asset(
                    "assets/images/arrowdown.svg",
                    // width: 30.w,
                    // height: 30.h,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Apply Exchange Policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w400,
                          // height: 27.h,
                          // letterSpacing: 0.18,
                        ),
                      )
                    ],
                  ),
                  children: <Widget>[],
                ),
              ),
            ],
          );
  }
}

class Feedtextformfield extends StatefulWidget {
  Feedtextformfield({
    Key? key,
    this.validator,
    this.inputFormatters,
    required this.hintText,
    required this.validatorText,
    this.textEditingController,
    this.leadingIcon,
    this.onTap,
    this.eyeIcon = false,
    this.suffixIcon,
    this.readonly = false,
    this.isInputPassword = false,
    this.outlineColor = const Color(0xFFFFB600),
    // this.keyboardType,
    this.suffixIconConstraints,
    this.texttype,
  }) : super(key: key);

  final dynamic validator;
  final TextEditingController? textEditingController;
  final String hintText;
  final String validatorText;
  final Widget? leadingIcon;
  final bool eyeIcon;
  final Widget? suffixIcon;
  final bool isInputPassword;
  void Function()? onTap;
  final bool readonly;
  final dynamic inputFormatters;
  final Color outlineColor;
  final BoxConstraints? suffixIconConstraints;

  final TextInputType? texttype;

  @override
  State<Feedtextformfield> createState() => _FeedtextformfieldState();
}

class _FeedtextformfieldState extends State<Feedtextformfield> {
  late bool obscureText;
  // late bool eyeseIcon;

  @override
  void initState() {
    super.initState();
    obscureText = widget.isInputPassword;
    // eyeseIcon = widget.eyeIcon;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 215.w,
      //height: 50.h,
      child:

          //   Padding(
          // padding: EdgeInsets.only(right: 80.w, top: 10.h, bottom: 10.h),
          // child:
          TextFormField(
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(
                fontSize: 16.sp,
              ),
              // hin
              // onTap: ontap,

              readOnly: widget.readonly,
              cursorColor: const Color(0xFF3B3F43),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              obscureText: obscureText,
              controller: widget.textEditingController,
              onTap: widget.onTap,
              decoration: InputDecoration(
                  isDense: true,
                  errorStyle: TextStyle(fontSize: 14.sp),
                  isCollapsed: true,
                  suffixIconConstraints: const BoxConstraints(),
                  contentPadding: EdgeInsets.only(
                      left: 17.w, right: 17.w, top: 11.h, bottom: 11.h),
                  filled: true,
                  fillColor: const Color(0xFFFEF3F8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(
                        color: const Color(0xFFFEF3F8).withOpacity(0),
                        width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(
                        color: const Color(0xFFFEF3F8).withOpacity(0),
                        width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(
                        color: const Color(0xFFFEF3F8).withOpacity(0),
                        width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  hintStyle: TextStyle(
                      color: const Color(0xFF54595F63),
                      fontSize: 15.sp,
                      fontFamily: "Poppins"),
                  hintText: widget.hintText,
                  helperText: "",
                  prefixIcon: widget.leadingIcon == null
                      ? null
                      : Padding(
                          padding: const EdgeInsets.only(left: 14, right: 14),
                          child: widget.leadingIcon!,
                        ),
                  // suffixIcon: widget.leadingIcon == null
                  //     ? null
                  //     : Padding(
                  //         padding: const EdgeInsets.only(left: 14, right: 14),
                  //         child: widget.leadingIcon!,
                  //       ),
                  prefixIconConstraints: const BoxConstraints(minWidth: 20),
                  suffixIcon: widget.isInputPassword
                      ? Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: eyesuffix(),
                        )
                      : const SizedBox()),
              keyboardType: widget.texttype,
              validator: widget.validator,
              inputFormatters: widget.inputFormatters),
      // );
    );
  }

  Widget eyesuffix() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () => setState(() => obscureText = !obscureText),
        child: obscureText
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Icon(
                      Icons.visibility_off,
                      color: Colors.black54,
                      size: 20.sp,
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.w,
                    ),
                    child: Icon(
                      Icons.visibility,
                      color: Colors.black54,
                      size: 20.sp,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class RequiredDropdownBtn extends StatefulWidget {
  const RequiredDropdownBtn({
    required this.hint,
    required this.items,
    this.isEnabled = true,
    this.onItemSelected,
    bool showAddButton = false,
    super.key,
  });
  final String hint;
  final List<String>? items;
  final void Function(String)? onItemSelected;
  final bool isEnabled;
  @override
  State<RequiredDropdownBtn> createState() => _RequiredDropdownBtnState();
}

class _RequiredDropdownBtnState extends State<RequiredDropdownBtn> {
  late String label;
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Row(
          children: [
            // SizedBox(
            //   width: 4,
            // ),
            Expanded(
              child: Text(
                widget.hint,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4D4D4D),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        items: widget.items!
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      //fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value as String;
          });
        },
        buttonStyleData: ButtonStyleData(
          height: 50.h,
          width: double.infinity,
          padding: const EdgeInsets.only(
            left: 4,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xffFEF3F8),
            ),
            color: Color(0xffFEF3F8),
          ),
          elevation: 0,
        ),
        iconStyleData: IconStyleData(
          icon: Icon(
            Icons.keyboard_arrow_down,
          ),
          iconSize: 23.sp,
          iconEnabledColor: Color(0xFFEF2B7B),
          iconDisabledColor: Color(0XFFEF2B7B),
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,

          padding: null,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xffCCCCCC),
            ),
            color: Colors.white,
          ),
          elevation: 1,
          // offset: const Offset(-20, 0),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: MaterialStateProperty.all<double>(6),
            thumbVisibility: MaterialStateProperty.all<bool>(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.only(left: 14, right: 14),
        ),
      ),
    );
  }
}
