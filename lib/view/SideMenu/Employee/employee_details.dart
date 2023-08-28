import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';

class EmployeeDetails extends StatefulWidget {
  const EmployeeDetails({super.key});

  @override
  State<EmployeeDetails> createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
          preferredSize: const Size.fromHeight(50),
          titleTxt: "Employee Details"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Employee Name :',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.15,
              ),
            ),
            sizedBoxHeight(5),
            Text(
              'Pooja Tambe',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.15,
              ),
            ),
            sizedBoxHeight(20),
            Text(
              'Date of Birth :',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.15,
              ),
            ),
            sizedBoxHeight(5),
            Text(
              '12-3-1989',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.15,
              ),
            ),
            sizedBoxHeight(20),
            Text(
              'Phone Number :',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.15,
              ),
            ),
            sizedBoxHeight(5),
            Text(
              '7845124512',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.15,
              ),
            ),
            sizedBoxHeight(20),
            Text(
              'Email ID :',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.15,
              ),
            ),
            sizedBoxHeight(5),
            Text(
              'poojatambe@wdimails.com',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 15.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.15,
              ),
            ),
            sizedBoxHeight(45),
            Text(
              'Permissions',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 18.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.18,
              ),
            ),
            sizedBoxHeight(15),
            Text(
              'Lorem ipsum',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 18.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.18,
              ),
            ),
            sizedBoxHeight(20.h),
            Text(
              'Lorem ipsum',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 18.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.18,
              ),
            ),
            sizedBoxHeight(20.h),
            Text(
              'Lorem ipsum',
              style: TextStyle(
                color: Color(0xFF373434),
                fontSize: 18.sp,
                fontFamily: 'AvenirNextCyr',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.18,
              ),
            ),
            sizedBoxHeight(20.h),
          ],
        ),
      ),
    );
  }
}
