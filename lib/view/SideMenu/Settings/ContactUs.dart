import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CurveAppBar/CurveAppBar.dart';

import 'package:wedzy/Utils/Common/CurveAppBar/CurveAppBarShape.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/CustomDesignButton.dart';
import 'package:wedzy/Utils/Common/CustomFormContainer.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';

import '../../../Utils/Common/texts.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CurveAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 38.h,
              ),
              Text(
                "Name",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomFormContainer(
                hintText: "Enter Name",
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Email",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 7.h,
              ),
              CustomFormContainer(
                hintText: "Enter Email",
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Message",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 7.h,
              ),
              SizedBox(
                height: 87.h,
                child: CustomFormContainer(
                  multiLines: true,
                  hintText: "Enter Message",
                ),
              ),
              SizedBox(
                height: 117.h,
              ),
              CustomDesignButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                                'assets/images/SVG/requestSend.svg'),
                            text373434_18w400('Thank You !'),
                            sizedBoxHeight(10.h),
                            text373434_15w400Center(
                                'Your message has been send to the admin. Kindly wait for the review.'),
                            sizedBoxHeight(14.h),
                            SizedBox(
                                width: 192.w,
                                child: CustomButton(
                                  text: 'Back',
                                  onTap: () {
                                    Get.back();
                                  },
                                ))
                          ],
                        ),
                      );
                    },
                  );
                },
                text: "Save",
              ),
              SizedBox(
                height: 50.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
