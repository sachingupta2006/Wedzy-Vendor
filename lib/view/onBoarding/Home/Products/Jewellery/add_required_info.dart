import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/resources/routes/route_name.dart';
import '../../../../../Utils/Common/CustomTextArea.dart';
import '../../../../../Utils/Common/CustomAppBarDynamic.dart';
import '../../../../../Utils/Common/CustomFormContainer.dart';
import '../../../../../Utils/Common/sized_box.dart';
import '../../../../../Utils/Common/texts.dart';

class Add_required extends StatefulWidget {
  const Add_required({super.key});

  @override
  State<Add_required> createState() => _Add_requiredState();
}

class _Add_requiredState extends State<Add_required> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: 'Add Required Information',
        preferredSize: Size.fromHeight(50),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                sizedBoxHeight(25.h),
                textBlack18w400(
                  'Brand Name',
                ),
                sizedBoxHeight(15.h),
                CustomFormContainer(
                  hintText: "",
                ),
                sizedBoxHeight(25.h),
                textBlack18w400(
                  'Address',
                ),
                sizedBoxHeight(15.h),
                Common_textarea(
                  hint_text: '',
                ),
                sizedBoxHeight(25.h),
                Container(
                    width: 375,
                    height: 300,
                    child: Image.asset(
                      'assets/images/Rectangle.png',
                      fit: BoxFit.cover,
                    )),
                sizedBoxHeight(25.h),
                textBlack18w400(
                  'Year Of Establishment',
                ),
                sizedBoxHeight(15.h),
                Common_textarea(
                  hint_text: '',
                ),
                sizedBoxHeight(25.h),
                textBlack18w400(
                    'Do You Have Any Licenses & Awards? \n( Up to 6 )'),
                sizedBoxHeight(15.h),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(color: Color(0xffEF2B7B)),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/upload.png'),
                        sizedBoxWidth(10.h),
                        Text(
                          'Upload',
                          style: TextStyle(
                            color: Color(0xFFEE3764),
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                sizedBoxHeight(25.h),
                textBlack18w400(
                  'Describe Your Shop',
                ),
                sizedBoxHeight(15.h),
                Common_textarea(
                  hint_text: '',
                ),
                sizedBoxHeight(25.h),
                textBlack18w400(
                  'Contact Details',
                ),
                sizedBoxHeight(15.h),
                CustomFormContainer(
                  leadingImage: 'assets/images/mailblack.svg',
                  hintText: "Email",
                ),
                sizedBoxHeight(25.h),
                CustomFormContainer(
                  leadingImage: 'assets/images/smartphoneblack.svg',
                  hintText: "Mobile Number",
                ),
                sizedBoxHeight(80.h),
                CustomButton(
                  text: 'Next',
                  onTap: () {
                    Get.toNamed(RouteName.jewellery_shoppreview);
                  },
                ),
                sizedBoxHeight(80.h),
              ]),
        ),
      ),
    );
  }
}
