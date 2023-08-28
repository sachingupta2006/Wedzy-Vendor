import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CurveAppBar/CurveAppBar2.dart';
import 'package:wedzy/Utils/Common/CustomDesignButton.dart';
import 'package:wedzy/Utils/Common/CustomFormContainer.dart';
import '../../../Utils/Common/custom_button.dart';
import '../../../Utils/Common/sized_box.dart';
import '../../../Utils/Common/texts.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  RxInt currentSliderValue = 50.obs;
  List labelText = ['Very Bad', 'Poor', 'Neutral', 'Good', 'Excellent'];
  List svg = ['verybadMood', 'Poor', 'neutral', 'goodMood', 'ExcellentMood'];
  // calculateSvg(value) {
  //   switch (value) {
  //     case 0:
  //       svgText = "assets/images/verybadMood.svg";
  //       break;
  //     case 25:
  //       svgText = "assets/images/Poor.svg";
  //       break;
  //     case 50:
  //       svgText = "assets/images/neutral.svg";
  //       break;
  //     case 75:
  //       svgText = "assets/images/goodMood.svg";
  //       break;
  //     case 100:
  //       svgText = "assets/images/ExcellentMood.svg";
  //       break;
  //   }
  // }

  // calculateMood(value) {
  //   switch (value) {
  //     case 0:
  //       labelText = 'Very Bad';
  //       break;
  //     case 25:
  //       labelText = 'Poor';
  //       break;
  //     case 50:
  //       labelText = 'Good';
  //       break;
  //     case 75:
  //       labelText = 'Neutral';
  //       break;
  //     case 100:
  //       labelText = 'Excellent';
  //       break;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CurveAppBar2(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 31.h),
              Text(
                'How was your experience?',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 23.h),
              Obx(
                () => Column(
                  children: [
                    SvgPicture.asset(
                        "assets/images/${svg[currentSliderValue.value == 0 ? 0 : currentSliderValue.value == 25 ? 1 : currentSliderValue.value == 50 ? 2 : currentSliderValue.value == 75 ? 3 : 4]}.svg"),
                    SizedBox(height: 38.h),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: const Color(0xFFEE3764),
                        activeTrackColor: const Color(0xFFEE3764),
                        inactiveTrackColor: const Color(0xFFFFC1DD),
                        activeTickMarkColor: const Color(0xFFEE3764),
                        inactiveTickMarkColor: const Color(0xFFFFC1DD),
                        tickMarkShape:
                            const RoundSliderTickMarkShape(tickMarkRadius: 5),
                        valueIndicatorColor: const Color(
                            0xFFEE3764), // Customize value indicator color
                        valueIndicatorTextStyle: const TextStyle(
                            color: Colors
                                .white), // Customize value indicator text color
                      ),
                      child: Slider(
                        value: currentSliderValue.value.toDouble(),
                        max: 100,
                        divisions: 4,
                        label: labelText[currentSliderValue.value == 0
                            ? 0
                            : currentSliderValue.value == 25
                                ? 1
                                : currentSliderValue.value == 50
                                    ? 2
                                    : currentSliderValue.value == 75
                                        ? 3
                                        : 4],
                        onChanged: (double value) {
                          // setState(() {
                          currentSliderValue.value = value.toInt();
                          // calculateMood(currentSliderValue.value);
                          // calculateSvg(currentSliderValue.value);
                          // });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 128.h,
                child: CustomFormContainer(
                  multiLines: true,
                  hintText: "Write your experience here...",
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  SvgPicture.asset("assets/images/paperclip.svg"),
                  const SizedBox(width: 5),
                  Text(
                    'Upload your attachment',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFEE3764),
                        ),
                  )
                ],
              ),
              const SizedBox(height: 30),
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
                            text373434_15w400('Thank You !'),
                            sizedBoxHeight(10.h),
                            text373434_15w400Center(
                                'Your Feedback Has Been Send To The Admin'),
                            sizedBoxHeight(14.h),
                            SizedBox(
                                width: 192.w,
                                child: CustomButton(
                                  text: 'Back',
                                  onTap: () {
                                    Navigator.pop(context);
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
