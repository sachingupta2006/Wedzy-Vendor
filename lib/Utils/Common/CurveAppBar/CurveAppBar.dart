import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wedzy/Utils/Common/CurveAppBar/CurveAppBarShape.dart';

class CurveAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight = 200.h;

  CurveAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
        ),
        iconSize: 22.spMin,
        color: Colors.white,
      ),
      titleSpacing: 0,
      title: Text(
        "Contact Us",
        style: Theme.of(context).textTheme.displayLarge!.copyWith(
              color: Colors.white,
            ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: ClipPath(
        clipper: CurvedAppBarClipper(),
        child: Container(
          height: appBarHeight,
          decoration: BoxDecoration(
            color: Color(0xFFEE3764),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 13.w,
                  ),
                  Expanded(
                    child: Text(
                      "Do you have any suggestions or found some bug? Let us know",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Image.asset("assets/images/contactUs.png"),
                  SizedBox(
                    width: 10.w,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      // Add other properties to the AppBar as needed
      // ...
    );
  }
}
