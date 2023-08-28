import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';

class Talentcertificatepage extends StatefulWidget {
  const Talentcertificatepage({super.key});

  @override
  State<Talentcertificatepage> createState() => _TalentcertificatepageState();
}

class _TalentcertificatepageState extends State<Talentcertificatepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
          titleTxt: "Certificate & License",
          preferredSize: Size.fromHeight(50)),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(38.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/certificate1.png",
                ),
                Image.asset(
                  "assets/images/certificate2.png",
                ),
                Image.asset(
                  "assets/images/certificate2.png",
                ),
              ],
            ),
            sizedBoxHeight(12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/certificate1.png",
                ),
                Image.asset(
                  "assets/images/certificate2.png",
                ),
                Image.asset(
                  "assets/images/certificate2.png",
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
