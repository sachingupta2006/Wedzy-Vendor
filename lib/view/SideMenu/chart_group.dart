import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/resources/routes/route_name.dart';

import '../../Utils/Common/CustomDesignButton.dart';
import '../../Utils/Common/sized_box.dart';
import '../../Utils/themedata.dart';

class Chart_group extends StatefulWidget {
  const Chart_group({super.key});

  @override
  State<Chart_group> createState() => _Chart_groupState();
}

class _Chart_groupState extends State<Chart_group> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: 'Message',
        preferredSize: Size.fromHeight(50),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              sizedBoxHeight(25.h),
              ListWidget(
                'assets/images/Ellipse 1185.png',
                'Chaitali Tatkare',
              ),
              Separator_border(),
              ListWidget(
                'assets/images/Ellipse 1186.png',
                'Mokshada kesarkar',
              ),
              Separator_border(),
              ListWidget(
                'assets/images/Ellipse 1187.png',
                'Pooja Patade',
              ),
              Separator_border(),
              ListWidget(
                'assets/images/Ellipse 1188.png',
                'Akanksha Surve',
              ),
              Separator_border(),
              ListWidget(
                'assets/images/image 14.png',
                'Mayur Naik',
              ),
              Separator_border(),
              ListWidget(
                'assets/images/Ellipse 1190.png',
                'Afrid Mulla',
              ),
              Separator_border(),
              sizedBoxHeight(50.h),
              CustomDesignButton(
                text: 'Next',
                onPressed: () {
                  Get.toNamed(RouteName.creategroup);
                },
              ),
              sizedBoxHeight(50.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget ListWidget(image, title) {
    var profileBool = false.obs;

    return ListTile(
      onTap: () {},
      leading: Container(
        width: 48,
        height: 48,
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
          shape: OvalBorder(
              // side: BorderSide(color: Color(0xFF373434)),
              ),
        ),
      ),
      title: textBlack15w700(title),
      trailing: GestureDetector(
        onTap: () {
          profileBool.value = !profileBool.value;
        },
        child: CircleAvatar(
          radius: 11.h,
          backgroundColor: Color.fromARGB(255, 248, 91, 131),
          child: CircleAvatar(
            radius: 9.h,
            backgroundColor: AppColors.white,
            child: Obx(() => CircleAvatar(
                  radius: 6.h,
                  backgroundColor: profileBool.value
                      ? AppColors.buttoncolour
                      : AppColors.white,
                )),
          ),
        ),
      ),
    );
  }

  Widget Separator_border() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 15,
      ),
      child: Container(
        width: 324,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 0.7,
              strokeAlign: BorderSide.strokeAlignCenter,
              color: Color.fromARGB(75, 240, 94, 145),
            ),
          ),
        ),
      ),
    );
  }
}
