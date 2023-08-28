import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/resources/routes/route_name.dart';
import 'package:wedzy/resources/routes/routes.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
          titleTxt: "Message", preferredSize: Size.fromHeight(50)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(RouteName.chart_group);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    'assets/images/addSymbol.svg',
                    width: 12.83,
                    height: 12.83,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Create New Group",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFEF2B7B),
                        ),
                  ),
                ],
              ),
            ),
            // Text(
            //   "Today",
            //   style: Theme.of(context).textTheme.displayMedium!.copyWith(
            //         fontWeight: FontWeight.w400,
            //         color: Color(0xFF373434),
            //       ),
            // ),
            // CustomMessageListTile(
            //   picture: "assets/images/Ellipse 1185.png",
            // ),
            // Divider(
            //   color: Color(0x66F05E90),
            // ),
            // CustomMessageListTile(
            //   picture: "assets/images/secondChatImage.png",
            // ),
            // SizedBox(
            //   height: 29.h,
            // ),
            // Text(
            //   "Yesterday",
            //   style: Theme.of(context).textTheme.displayMedium!.copyWith(
            //         fontWeight: FontWeight.w400,
            //         color: Color(0xFF373434),
            //       ),
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.83,
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        (index == 0 || index == 1)
                            ? Text(
                                "Today",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF373434),
                                    ),
                              )
                            : Text(
                                "Yesterday",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF373434),
                                    ),
                              ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(RouteName.chatbox);
                          },
                          child: CustomMessageListTile(
                            picture: "assets/images/Ellipse 1185.png",
                          ),
                        ),
                        Divider(
                          color: Color(0x66F05E90),
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class CustomMessageListTile extends StatelessWidget {
  CustomMessageListTile({
    super.key,
    required this.picture,
  });
  String picture;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 25,
        child: Image.asset(
          picture,
          fit: BoxFit.fill,
        ),
      ),
      title: Text(
        'Chaitali Tatkare',
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
              fontWeight: FontWeight.w700,
              color: Color(0xFF373434),
            ),
      ),
      subtitle: Text(
        'Lorem ipsum dolor sit......',
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
              fontWeight: FontWeight.w400,
              color: Color(0xFF9B9B9B),
            ),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Text(
          "10.20 AM",
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF9B9B9B),
              ),
        ),
      ),
    );
  }
}
