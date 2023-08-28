import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/themedata.dart';

class CustomFormContainer extends StatelessWidget {
  CustomFormContainer(
      {super.key,
      this.hintText,
      this.leadingImage,
      this.trailingImage,
      this.usingPng,
      this.txtinptype,
      this.inputFormatters,
      this.multiLines});

  String? leadingImage;
  String? trailingImage;
  final TextInputType? txtinptype;
  String? hintText;
  bool? usingPng;
  final dynamic inputFormatters;
  bool? multiLines;
  @override
  Widget build(BuildContext context) {
    var activeTyping = false.obs;
    return Obx(() => Container(
          width: double.infinity,
          height: 50,
          decoration: ShapeDecoration(
            color: Color(0xFFFEF3F8),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            shadows: [
              BoxShadow(
                color: activeTyping.value
                    ? Color(0xFFFFC1DD)
                    : AppColors.transparent,
                blurRadius: 0,
                offset: Offset(1, 2),
              )
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  onTap: () {
                    activeTyping.value = true;
                  },
                  maxLines: multiLines ?? false ? 5 : 1,
                  inputFormatters: inputFormatters,
                  keyboardType: txtinptype ?? TextInputType.text,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      prefixIcon: leadingImage != null
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 14, top: 15, bottom: 15),
                              child: usingPng ?? false
                                  ? Image.asset(leadingImage!)
                                  : SvgPicture.asset(
                                      leadingImage!, // Replace with your SVG icon path
                                    ),
                            )
                          : null,
                      suffixIcon: trailingImage != null
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  right: 19, top: 15, bottom: 15),
                              child: SvgPicture.asset(
                                  trailingImage! // Replace with your SVG icon path
                                  ),
                            )
                          : null,
                      border: InputBorder.none,
                      hintText: hintText,
                      hintStyle: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Color(0xFF9F9F9F),
                              fontWeight: FontWeight.w400)),
                ),
              ),
            ],
          ),
        ));
  }
}
