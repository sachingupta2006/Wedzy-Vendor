import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Common_textarea extends StatelessWidget {
  const Common_textarea({super.key, required this.hint_text, this.maxline});
  final String hint_text;
  final int? maxline;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxline ?? 4,
      decoration: InputDecoration(
        errorStyle: TextStyle(fontSize: 12.sp),
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20),
        filled: true,
        fillColor: Color(0xFFFEF3F8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.transparent, width: 0.50),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.transparent, width: 0.50),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.transparent, width: 0.50),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.red, width: 0.50),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.red, width: 0.50),
        ),
        hintText: hint_text,
        hintStyle: TextStyle(
            color: Color(0x80000000), fontSize: 16.sp, fontFamily: "Poppins"),
      ),
    );
  }
}
