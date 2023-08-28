import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/texts.dart';
import 'package:wedzy/Utils/themedata.dart';
import '../../../../../Utils/Common/CustomDesignButton.dart';
import '../../../../../Utils/Common/CustomAppBarDynamic.dart';
import '../../../../../Utils/Common/CustomFormContainer.dart';
import '../../../../../Utils/Common/sized_box.dart';

class Add_product extends StatefulWidget {
  const Add_product({super.key});

  @override
  State<Add_product> createState() => _Add_productState();
}

class _Add_productState extends State<Add_product> {
  // String _value = "gst@5%";
  String? _value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: 'Add Products',
        preferredSize: Size.fromHeight(50),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHeight(25.h),
              Text(
                'Product Info',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF373434),
                  fontSize: 18,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.18,
                ),
              ),
              sizedBoxWidth(30.w),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF373434)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: SvgPicture.asset(
                          'assets/images/camera.svg',
                          width: 46,
                          height: 46,
                        ),
                      ),
                    ),
                    sizedBoxWidth(20.w),
                    Text(
                      'Add product images \n(up to 8)',
                      style: TextStyle(
                        color: Color(0xFF373434),
                        fontSize: 15,
                        fontFamily: 'AvenirNextCyr',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.15,
                      ),
                    ),
                  ],
                ),
              ),
              sizedBoxHeight(25.h),
              textBlack18w400('Title'),
              sizedBoxHeight(15.h),
              CustomFormProductContainer(
                hintText: "eg : earrings",
              ),
              sizedBoxHeight(25.h),
              textBlack18w400('Brand'),
              sizedBoxHeight(15.h),
              CustomFormProductContainer(
                hintText: "eg : kalyan jewellers",
              ),
              sizedBoxHeight(25.h),
              textBlack18w400('Manufacturer'),
              sizedBoxHeight(15.h),
              CustomFormProductContainer(
                hintText: "eg : vedant fashions ltd",
              ),
              sizedBoxHeight(25.h),
              textBlack18w400('Product ID'),
              sizedBoxHeight(15.h),
              CustomFormProductContainer(
                hintText: "eg : #ABC5678",
              ),
              sizedBoxHeight(25.h),
              textBlack18w400('Maximum retail Price'),
              sizedBoxHeight(15.h),
              CustomFormProductContainer(
                hintText: "eg : Rs.15000",
              ),
              sizedBoxHeight(25.h),
              textBlack18w400('Seller SKU (Optional)'),
              sizedBoxHeight(15.h),
              CustomFormProductContainer(
                hintText: "eg : abd45676",
              ),
              sizedBoxHeight(25.h),
              textBlack18w400('Tax'),
              sizedBoxHeight(15.h),
              DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xFFFEF3F8),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: DropdownButton(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                         value: _value,
                         hint: Text("Tax rate",style: TextStyle(
                          fontSize: 15, color: Color(0xFF9B9B9B)
                         ),),
                        items: [
                          // DropdownMenuItem(
                          //   child: Text("Tax rate"),
                          //   value: "taxrate",
                          // ),
                          DropdownMenuItem(
                            child: Text("GST@5%"),
                            value: "gst@5%",
                          ),
                          DropdownMenuItem(
                            child: Text("GST@10%"),
                            value: "gst@10%",
                          ),
                          DropdownMenuItem(
                            child: Text("GST@18%"),
                            value: "gst@15%",
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                        isExpanded:
                            true, //make true to take width of parent widget
                        underline: Container(), //empty line
                        style:
                            TextStyle(fontSize: 15, color: Colors.black),
                        dropdownColor: Colors.white,
                        iconEnabledColor: Color(0xFFEE3764), //Icon color
                      ))),
              sizedBoxHeight(25.h),
              textBlack18w400('Upload image of web banner'),
              sizedBoxHeight(15.h),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(color: Color(0xffEF2B7B)),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/upload.png'),
                      sizedBoxWidth(10.h),
                      Text(
                        'Upload',
                        style: TextStyle(
                          color: Color(0xFFEE3764),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              sizedBoxHeight(25.h),
              textBlack18w400('Add web banner link'),
              sizedBoxHeight(15.h),
              CustomFormProductContainer(
                hintText: "",
              ),
              sizedBoxHeight(70.h),
              CustomDesignButton(
                text: 'Save & Proceed',
                onPressed: () {
                  Get.toNamed('/jewellery_shoppreview');
                },
              ),
              sizedBoxHeight(80.h),
            ],
          ),
        ),
      ),
    );
  }
}


class CustomFormProductContainer extends StatelessWidget {
  CustomFormProductContainer(
      {super.key,
      this.hintText,
      this.leadingImage,
      this.trailingImage,
      this.usingPng,
      this.multiLines});

  String? leadingImage;
  String? trailingImage;
  String? hintText;
  bool? usingPng;
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
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left:9.w),
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
