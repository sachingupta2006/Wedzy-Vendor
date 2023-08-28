import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomBottomBar.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/Utils/Common/texts.dart';

class TempororyHomeRoute extends StatelessWidget {
  const TempororyHomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => CustomBottomBar(
                      pageIndex: 0,
                    ));
              },
              child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3,
                  // color: Colors.red.withOpacity(0.2),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      textBlack30w400('Booking'),
                      sizedBoxWidth(50),
                      SvgPicture.asset('assets/images/SVG/Bookings.svg')
                    ],
                  ))),
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                Get.to(() => CustomBottomBar(
                      pageIndex: 1,
                    ));
              },
              child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3,
                  // color: Colors.green.withOpacity(0.2),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      textBlack30w400('Order'),
                      sizedBoxWidth(50),
                      SvgPicture.asset('assets/images/SVG/Recent Orders.svg')
                    ],
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
