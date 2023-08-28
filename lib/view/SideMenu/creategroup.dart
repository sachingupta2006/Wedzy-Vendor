import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/resources/routes/route_name.dart';

import '../../Utils/Common/CustomAppBarDynamic.dart';
import '../../Utils/Common/CustomFormContainer.dart';
import '../../Utils/Common/texts.dart';
import 'chart_group.dart';

class Creategroup extends StatefulWidget {
  const Creategroup({super.key});

  @override
  State<Creategroup> createState() => _CreategroupState();
}

class _CreategroupState extends State<Creategroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: '',
        preferredSize: Size.fromHeight(50),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            sizedBoxHeight(30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 130.h,
                  height: 130.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xFFFFE7F2),
                    image: DecorationImage(
                        image: AssetImage('assets/images/camera.png')),
                  ),
                ),
              ],
            ),
            sizedBoxHeight(40.h),
            textBlack18w400('Group Name'),
            sizedBoxHeight(15.h),
            CustomFormContainer(
              hintText: "",
            ),
            sizedBoxHeight(30.h),
            text373434_15w400('Participants: 3'),
            sizedBoxHeight(30.h),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Ellipse 1185.png'),
                    text373434_15w400('Chaitali')
                  ],
                ),
                sizedBoxWidth(15.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Ellipse 1186.png'),
                    text373434_15w400('Pooja')
                  ],
                ),
                sizedBoxWidth(15.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Ellipse 1187.png'),
                    text373434_15w400('Mokshada'),
                  ],
                ),
              ],
            ),
            sizedBoxHeight(90),
            CustomButton(
              text: 'Create',
              onTap: () {
                Get.toNamed(RouteName.chatbox);
              },
            ),
            sizedBoxHeight(60),
          ]),
        ),
      ),
    );
  }
}
