import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';

import '../../../Utils/Common/CustomAppBarDynamic.dart';
import '../../../Utils/themedata.dart';
import 'account_delete.dart';

class Accounts extends StatelessWidget {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        preferredSize: const Size.fromHeight(50),
        titleTxt: 'Accounts',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            sizedBoxHeight(10.h),
            GestureDetector(
              onTap: () {
                Get.to(() => const AccountDelete());
              },
              child: Row(
                children: [
                  Icon(Icons.delete_forever_outlined,
                      color: AppColors.buttoncolour, size: 24.h),
                  const SizedBox(width: 10),
                  Expanded(
                    child: textPrimary15w400('Delete my account'),
                  ),
                  Container(
                      padding: EdgeInsets.all(6.h),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFEF3F8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child:
                          SvgPicture.asset("assets/images/chevron-right.svg"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
