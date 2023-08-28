import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_appbar.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/view/onBoarding/Home/Virtual%20Wallet/wallet.dart';

import '../../../../Utils/Common/colors.dart';
import 'transaction_details.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
          titleTxt: 'Payment History',
          preferredSize: const Size.fromHeight(50)),
      body: Column(
        children: [
          sizedBoxHeight(40.h),
          rowWidget('Afrid Mulla', '10'),
          rowWidget('Mokshada Kesarkar', '20'),
          rowWidget('Mayur Naik', '15'),
          rowWidget('Pooja Tambe', '10'),
          rowWidget('Akanksha Surve', '10'),
          rowWidget('Jyoti Yadav', '30'),
        ],
      ),
    );
  }

  Widget rowWidget(String name, String amount) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const TransactionDetails());
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textBlack15w400(name),
                    sizedBoxHeight(2.h),
                    textBlack10w700('May 10, 2023 at 1:20 PM')
                  ],
                ),
                Row(
                  children: [
                    textGreen15w700('+'),
                    sizedBoxWidth(8.w),
                    textBlack15w700('₹ $amount,00,00'),
                  ],
                ),
              ],
            ),
            sizedBoxHeight(22.h)
          ],
        ),
      ),
    );
  }
}
