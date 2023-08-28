import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_appbar.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';

class WithdrawalHistory extends StatelessWidget {
  const WithdrawalHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
          titleTxt: 'Withdrawal History',
          preferredSize: const Size.fromHeight(50)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          rowWidget(),
          const Divider(color: Color(0x77F05E90)),
          rowWidget(),
          const Divider(color: Color(0x77F05E90)),
          rowWidget(),
          const Divider(color: Color(0x77F05E90)),
          rowWidget(),
          const Divider(color: Color(0x77F05E90)),
          rowWidget(),
        ],
      ),
    );
  }

  Widget rowWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxHeight(30.h),
          Row(
            children: [
              textRed16w500('-'),
              textBlack16w500(' ₹ 1,20,000'),
            ],
          ),
          textBlack15w400('23 May 2023, 11.30 am'),
          sizedBoxHeight(15.h)
        ],
      ),
    );
  }
}
