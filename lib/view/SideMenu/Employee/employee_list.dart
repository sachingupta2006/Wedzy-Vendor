import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/Utils/Common/custom_button.dart';
import 'package:wedzy/Utils/Common/sized_box.dart';
import 'package:wedzy/view/SideMenu/Employee/employee_list_data.dart';

import '../../../Utils/Common/texts.dart';
import '../../../Utils/themedata.dart';

class EmployeeList extends StatefulWidget {
  const EmployeeList({super.key});

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
          preferredSize: const Size.fromHeight(50), titleTxt: "Employee list"),
      body: Column(
        children: [
          sizedBoxHeight(10.h),
          InkWell(
            onTap: () {
              Get.toNamed("employeedetail");
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 150.h,
              child: ListView.builder(
                itemCount: employeeData.length,
                itemBuilder: (context, index) {
                  final item = employeeData[index];
                  final serialNumber = (index + 1).toString();

                  return ListTile(
                    title: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "$serialNumber .",
                              style: TextStyle(
                                color: Color(0xFF373434),
                                fontSize: 16,
                                fontFamily: 'AvenirNextCyr',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            sizedBoxWidth(20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['name'] ?? '',
                                  style: TextStyle(
                                    color: Color(0xFF373434),
                                    fontSize: 15,
                                    fontFamily: 'AvenirNextCyr',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.15,
                                  ),
                                ),
                                sizedBoxHeight(8),
                                Text(
                                  item['number'] ?? '',
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
                            Spacer(),
                            PopupMenuButton<String>(
                              onSelected: (value) {
                                if (value == 'edit') {
                                  Get.toNamed("editemployee");
                                } else if (value == 'delete') {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return deleteAlertDialogue(context);
                                    },
                                  );
                                }
                              },
                              itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry<String>>[
                                const PopupMenuItem<String>(
                                  value: 'edit',
                                  child: ListTile(
                                    title: Text('Edit'),
                                  ),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'delete',
                                  child: ListTile(
                                    title: Text('Delete'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          color: Color(0x77F05E90),
                          height: 30.h,
                        ),
                        // Container(
                        //   width: double.infinity,
                        //   decoration: ShapeDecoration(
                        //     shape: RoundedRectangleBorder(
                        //       side: BorderSide(
                        //         width: 0.25,
                        //         strokeAlign: BorderSide.strokeAlignCenter,
                        //         color: Color(0x77F05E90),
                        //       ),
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          CustomButton(
            text: "Add employee",
            onTap: () {
              Get.toNamed("/addemployee");
            },
          )
        ],
      ),
    );
  }

  AlertDialog deleteAlertDialogue(context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          textBlack18w400Center(
              'Are You Sure You Want To Delete The Employee?'),
          sizedBoxHeight(20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: 35.h,
                  width: MediaQuery.of(context).size.width / 3.5,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.transparent,
                            content: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  sizedBoxHeight(15.h),
                                  const CircleAvatar(
                                      radius: 24,
                                      backgroundColor: Colors.red,
                                      child: Icon(Icons.delete_outline)),
                                  sizedBoxHeight(10.h),
                                  textBlack18w400Center(
                                      'Your Employee Has Been Deleted Successfully!'),
                                  sizedBoxHeight(25.h)
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 6.h),
                      decoration: BoxDecoration(
                          color: AppColors.buttoncolour,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          border: Border.all(color: AppColors.buttoncolour)),
                      child: Center(child: textWhite15w700('Yes')),
                    ),
                  )),
              sizedBoxWidth(10.w),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SizedBox(
                    height: 35.h,
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 6.h),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          border: Border.all(color: AppColors.buttoncolour)),
                      child: Center(child: textRed15w400('No')),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
