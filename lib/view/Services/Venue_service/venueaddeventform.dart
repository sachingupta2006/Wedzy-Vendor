import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/CustomFormContainer.dart';
import 'package:wedzy/Utils/Common/appbarservices.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/view/Services/Bartender/packagespage.dart';

class Venueaddeventform extends StatefulWidget {
  const Venueaddeventform({super.key});

  @override
  State<Venueaddeventform> createState() => _VenueaddeventformState();
}

class _VenueaddeventformState extends State<Venueaddeventform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      CustomAppBarDynamic(titleTxt: "Add Event", preferredSize: Size.fromHeight(50)),
      // Appbarservices(titleTxt: "  Add Event"),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(10.h),
            Text(
              'Customer Name',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 18.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(13.h),
            CustomFormContainer(),
            sizedBoxHeight(13.h),
            Text(
              'Package Details',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 18.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(13.h),
            CustomFormContainer(),
            sizedBoxHeight(13.h),
            Text(
              'Advance Received',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 18.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(13.h),
            PackageTextformfield(
              leadingImage: "₹",
              // hintText: "Enter price of package",
            ),
            sizedBoxHeight(13.h),
            Text(
              'Balance',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 18.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(13.h),
            PackageTextformfield(
              leadingImage: "₹",
            ),
            sizedBoxHeight(13.h),
            Text(
              'Address',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 18.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(13.h),
            CustomFormContainer(),
            sizedBoxHeight(13.h),
            Text(
              'Additional notes',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 18.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
              ),
            ),
            sizedBoxHeight(13.h),
            TextFormField(
              style: TextStyle(fontSize: 16.sp),
              cursorColor: const Color(0xFF3B3F43),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                errorStyle: TextStyle(fontSize: 16.sp),
                contentPadding: EdgeInsets.all(17.h),
                filled: true,
                fillColor: Color(0xFFFEF3F8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                      color: Color(0xFFFEF3F8).withOpacity(0), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                      color: Color(0xFFFEF3F8).withOpacity(0), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(
                      color: Color(0xFFFEF3F8).withOpacity(0), width: 1),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.red, width: 1),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.red, width: 1),
                ),
                hintStyle:
                    TextStyle(color: const Color(0xFF4D4D4D), fontSize: 16.sp),
                hintText: " Write additional notes",
              ),
              minLines: 4,
              maxLines: null,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Additional notes is required';
                }
                return null;
              },
            ),
            sizedBoxHeight(44.h),
            CustomButton(text: "Save",
            onTap: (){
              Get.back();
            }
            ),
            sizedBoxHeight(40.h),
          ],
        ),
      )),
    );
  }
}
