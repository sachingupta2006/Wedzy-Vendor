import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/CustomFormContainer.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/themedata.dart';

class AddEmployee extends StatefulWidget {
  const AddEmployee({super.key});

  @override
  State<AddEmployee> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  DateTime? _selectedDate;
TextEditingController datecontroller = TextEditingController();

  void _presentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1922),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: AppColors.buttoncolour,
                onPrimary: AppColors.white,
                onSurface: Colors.black,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: AppColors.buttoncolour,
                ),
              ),
            ),
            child: child!);
      },
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
        datecontroller.text =
            "${_selectedDate!.day.toString()}/${_selectedDate!.month.toString().padLeft(2, '0')}/${_selectedDate!.year.toString().padLeft(2, '0')}";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
          preferredSize: const Size.fromHeight(50), titleTxt: "Add Employee"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Full Name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.15,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(5.h),
              CustomFormContainer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Date of Birth',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.15,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(5.h),
              // CustomFormContainer(),
              CustomAddEmployeedatepicker(
                datecontroller: datecontroller,
                 ontap: () => _presentDatePicker(),
                 
                 ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Phone',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.15,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(5.h),
              CustomFormContainer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Email Id',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.15,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(5.h),
              CustomFormContainer(),
              sizedBoxHeight(20.h),
              Row(
                children: [
                  Text(
                    'Permissions',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.18,
                    ),
                  )
                ],
              ),
              sizedBoxHeight(13.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lorem Ipsum',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.18,
                    ),
                  ),
                  Checkbox(
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.75, color: Color(0xFFEE3764)),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    fillColor: MaterialStatePropertyAll(Color(0xFFEF2B7B)),
                    value: isChecked3,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked3 = value!;
                      });
                    },
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.25,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0x77F05E90),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lorem Ipsum',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.18,
                    ),
                  ),
                  Checkbox(
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.75, color: Color(0xFFEE3764)),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    fillColor: MaterialStatePropertyAll(Color(0xFFEF2B7B)),
                    value: isChecked4,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked4 = value!;
                      });
                    },
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.25,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0x77F05E90),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lorem Ipsum',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontFamily: 'AvenirNextCyr',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.18,
                    ),
                  ),
                  Checkbox(
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.75, color: Color(0xFFEE3764)),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    fillColor: MaterialStatePropertyAll(Color(0xFFEF2B7B)),
                    value: isChecked5,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked5 = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 70.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
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
                      child: Center(
                        child: Text(
                          'Submit',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 154.w,
                      height: 50.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.25, color: Color(0xFFEF2B7B)),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Cancel',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFEE3764),
                            fontSize: 15.sp,
                            fontFamily: 'AvenirNextCyr',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.15,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


class CustomAddEmployeedatepicker extends StatelessWidget {
  CustomAddEmployeedatepicker(
      {super.key,
      this.hintText,
      this.leadingImage,
      this.trailingImage,
    required this.datecontroller,
    required this.ontap,

      this.usingPng,
    this.onTap,

      this.multiLines});

  String? leadingImage;
  final TextEditingController datecontroller;
    void Function()? onTap;
  String? trailingImage;
  final GestureTapCallback ontap;

  String? hintText;
  bool? usingPng;
  bool? multiLines;

  @override
  Widget build(BuildContext context) {
    var activeTyping = false.obs;
    return Obx(() => Container(
          width: double.infinity,
          height: 50,
          decoration: ShapeDecoration(
            color: Color(0xFFFEF3F8),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                  controller: datecontroller,
                  onTap: ()
                //(
                //() => onTap!()),
                  
                  {
                     activeTyping.value = true;
                  },
                  maxLines: multiLines ?? false ? 5 : 1,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      prefixIcon: leadingImage != null
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 14, top: 15, bottom: 15),
                              child: usingPng ?? false
                                  ? Image.asset(leadingImage!)
                                  : SvgPicture.asset(
                                      leadingImage!, // Replace with your SVG icon path
                                    ),
                            )
                          : null,
                      suffixIcon: 
                      // trailingImage != null
                      //     ? 
                          IconButton(
                            onPressed: (){
                              ontap();
                            },
                             icon: Icon(Icons.date_range,
                             color: AppColors.buttoncolour,
                             )
                             ),
                          // : null,
                      border: InputBorder.none,
                      hintText: hintText,
                      hintStyle: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Color(0xFF9F9F9F),
                              fontWeight: FontWeight.w400)),
                ),
              ),
            ],
          ),
        ));
  }
}

