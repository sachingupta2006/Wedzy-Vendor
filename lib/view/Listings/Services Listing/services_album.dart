import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';

class ServicesAlbum extends StatelessWidget {
  const ServicesAlbum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
          titleTxt: 'Album', preferredSize: const Size.fromHeight(50)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.w),
              child: SizedBox(
                height: 124.h,
                width: MediaQuery.of(context).size.width / 2 - 40.w,
                child: Image.asset(
                  "assets/images/detailpreview1.png",
                  fit: BoxFit.fill,
                ),
                // color: Colors.red,
              ),
            );
          },
        ),
      ),
    );
  }
}
