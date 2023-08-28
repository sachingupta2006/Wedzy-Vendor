import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';

class Registrationotp extends StatefulWidget {
  const Registrationotp({super.key});

  @override
  State<Registrationotp> createState() => _RegistrationotpState();
}

class _RegistrationotpState extends State<Registrationotp> {
  TextEditingController pincode = TextEditingController();

  buildverifieddialog(context) {
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
                  child: Lottie.asset(
                    "assets/json/logincheck.json",
                    // "assets/json/bookingdone.json",
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

                sizedBoxHeight(27.h),
                InkWell(
                  onTap: () {
                    Get.toNamed("/registration2");
                  },
                  child: Container(
                    width: 154.w,
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
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontFamily: 'AvenirNextCyr',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     InkWell(
                //         onTap: () {
                //           Navigator.pop(context);

                //         },
                //         child: Container(
                //           width: 117.w,
                //           height: 36.h,
                //           decoration: ShapeDecoration(
                //             color: Color(0xFFEF2B7B),
                //             shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.only(
                //                 topRight: Radius.circular(10),
                //                 bottomLeft: Radius.circular(10),
                //               ),
                //             ),
                //           ),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             children: [
                //               Text(
                //                 'Yes',
                //                 style: TextStyle(
                //                   color: Colors.white,
                //                   fontSize: 15.sp,
                //                   fontFamily: 'AvenirNextCyr',
                //                   fontWeight: FontWeight.w700,
                //                 ),
                //               ),
                //             ],
                //           ),
                //         )),
                //     sizedBoxWidth(28.w),
                //     InkWell(
                //         onTap: () {
                //           Navigator.pop(context);
                //         },
                //         child: Container(
                //           width: 117.w,
                //           height: 36.h,
                //           decoration: ShapeDecoration(
                //             shape: RoundedRectangleBorder(
                //               side: BorderSide(
                //                   width: 0.50, color: Color(0xFFEF2B7B)),
                //               borderRadius: BorderRadius.only(
                //                 topRight: Radius.circular(10),
                //                 bottomLeft: Radius.circular(10),
                //               ),
                //             ),
                //           ),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             children: [
                //               Text(
                //                 'No',
                //                 style: TextStyle(
                //                   color: Color(0xFFEF2B7B),
                //                   fontSize: 15.sp,
                //                   fontFamily: 'AvenirNextCyr',
                //                   fontWeight: FontWeight.w700,
                //                 ),
                //               ),
                //             ],
                //           ),
                //         )),
                //   ],
                // ),

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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 32.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Save your registration details !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 18.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Check your SMS inbox or Email',
                    style: TextStyle(
                      color: Color(0xFF373434),
                      fontSize: 15.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(100.h),
              Text(
                'Enter 4 digit OTP',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 15.sp,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                ),
              ),
              sizedBoxHeight(25.h),
              Container(
                child: PinCodeTextField(
                  showCursor: true,
                  cursorColor: Color(0xFF143C6D),
                  textStyle:
                      TextStyle(fontSize: 18.sm, color: Color(0xFF143C6D)),
                  errorTextSpace: 22,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Please Enter verification code";
                    } else if (value != null && value.length < 4) {
                      return "OTP length should be atleast 4";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    selectedFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    inactiveColor: Color(0xFFCCCCCC),
                    activeColor: Color(0xFFCCCCCC),
                    selectedColor: Color(0xFFCCCCCC),
                    shape: PinCodeFieldShape.box,
                    borderWidth: 0.10,
                    borderRadius: BorderRadius.circular(5),
                    activeBoxShadow: [
                      BoxShadow(
                        color: Color(0x3F4C4C4C),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ],
                    inActiveBoxShadow: [
                      BoxShadow(
                        color: Color(0x3F4C4C4C),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ],
                    fieldHeight: 60.h,
                    fieldWidth: 52.w,
                    activeFillColor: Colors.white,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  controller: pincode,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {});
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");

                    return true;
                  },
                  appContext: context,
                ),
              ),
              sizedBoxHeight(1.h),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Resend OTP',
                  style: TextStyle(
                    color: Color(0xFF373434),
                    fontSize: 15.sp,
                    fontFamily: 'AvenirNextCyr',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              sizedBoxHeight(165.h),
              CustomButton(
                text: "Verify",
                onTap: () {
                  buildverifieddialog(context);
                  // Get.toNamed("/registration2");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
