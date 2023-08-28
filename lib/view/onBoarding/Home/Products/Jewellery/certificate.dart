import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
// import 'package:wedzy/Utils/Common/sized_box.dart';

import '../../../../../Utils/Common/CustomAppBarDynamic.dart';

class Certificate extends StatefulWidget {
  const Certificate({super.key});

  @override
  State<Certificate> createState() => _CertificateState();
}

class _CertificateState extends State<Certificate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: 'Certificate & License',
        preferredSize: Size.fromHeight(50),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              sizedBoxHeight(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  certificate_img(
                    image: 'assets/images/image 18.png',
                  ),
                  certificate_img(
                    image: 'assets/images/image 18.png',
                  ),
                  certificate_img(
                    image: 'assets/images/image 18.png',
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  certificate_img(
                    image: 'assets/images/image 18.png',
                  ),
                  certificate_img(
                    image: 'assets/images/image 18.png',
                  ),
                  certificate_img(
                    image: 'assets/images/image 18.png',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class certificate_img extends StatelessWidget {
  const certificate_img({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 105.w,
      // height: 100,
      fit: BoxFit.contain,
    );
  }
}
