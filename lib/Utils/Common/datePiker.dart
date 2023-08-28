import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../themedata.dart';

class DatePickerCustom extends StatefulWidget {
  DatePickerCustom(
      {super.key,
      this.hintText,
      this.leadingImage,
      this.trailingImage,
      this.usingPng,
      this.onTap,
      this.multiLines});

  String? leadingImage;
  TextEditingController dateController = TextEditingController();

  void Function()? onTap;
  String? trailingImage;

  String? hintText;
  bool? usingPng;
  bool? multiLines;

  @override
  State<DatePickerCustom> createState() => _DatePickerCustomState();
}

class _DatePickerCustomState extends State<DatePickerCustom> {
  DateTime? _selectedDate;

  TextEditingController dateController = TextEditingController();

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1922),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: AppColors.buttoncolour,
                onPrimary: AppColors.white,
                onSurface: Colors.black,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: AppColors.buttoncolour,
                ),
              ),
            ),
            child: child!);
      },
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
        dateController.text =
            "  ${_selectedDate!.day.toString()}/${_selectedDate!.month.toString().padLeft(2, '0')}/${_selectedDate!.year.toString().padLeft(2, '0')}";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var activeTyping = false.obs;
    return Obx(() => Container(
          width: double.infinity,
          height: 50,
          decoration: ShapeDecoration(
            color: const Color(0xFFFEF3F8),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            shadows: [
              BoxShadow(
                color: activeTyping.value
                    ? const Color(0xFFFFC1DD)
                    : AppColors.transparent,
                blurRadius: 0,
                offset: const Offset(1, 2),
              )
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: dateController,
                  onTap: () {
                    activeTyping.value = true;
                  },
                  maxLines: widget.multiLines ?? false ? 5 : 1,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      prefixIcon: widget.leadingImage != null
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 14, top: 15, bottom: 15),
                              child: widget.usingPng ?? false
                                  ? Image.asset(widget.leadingImage!)
                                  : SvgPicture.asset(
                                      widget
                                          .leadingImage!, // Replace with your SVG icon path
                                    ),
                            )
                          : null,
                      suffixIcon: IconButton(
                          onPressed: () {
                            _presentDatePicker();
                          },
                          icon: const Icon(
                            Icons.date_range,
                            color: AppColors.buttoncolour,
                          )),
                      // : null,
                      border: InputBorder.none,
                      hintText: widget.hintText,
                      hintStyle: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: const Color(0xFF9F9F9F),
                              fontWeight: FontWeight.w400)),
                ),
              ),
            ],
          ),
        ));
  }
}
