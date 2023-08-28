import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wedzy/Utils/Common/CustomAppBarDynamic.dart';
import 'package:wedzy/view/Orders/orders.dart';
import 'package:wedzy/view/onBoarding/bookings.dart';

class Notifications extends StatelessWidget {
  int index;
  Notifications({super.key, required this.index});
  List notification = ['booking', 'order'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDynamic(
        titleTxt: 'Notifications',
        preferredSize: const Size.fromHeight(50),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: const Color(0xFF373434),
                    ),
              ),
              const SizedBox(height: 14),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'You’ve received a new ${notification[index]} request',
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: const Color(0xFF373434),
                              ),
                    ),
                  ),
                  Text(
                    '10.20 AM',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: const Color(0xFF373434),
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              InkWell(
                onTap: () {
                  Get.to(() =>
                      index == 0 ? Bookings(selectedPage: 0) :  Orders());
                },
                child: Text(
                  "View",
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        decoration: TextDecoration.underline,
                        color: const Color(0xFFEF2B7B),
                      ),
                ),
              ),
              const SizedBox(height: 30),
              Text("Yesterday",
                  style: Theme.of(context).textTheme.displayMedium!),
              const SizedBox(height: 17),
              SizedBox(
                height: 300,
                child: ListView.separated(
                  itemCount:
                      3, // Replace itemCount with the actual item count for the list
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                    color: Color(0x66F05E90),
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'You’ve received a new order request',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '1 May',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.spMin),
                            ),
                          ],
                        ),
                        SizedBox(height: 14.h)
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );

    // return DefaultTabController(
    //   length: 1,
    //   child: Scaffold(
    //     appBar: CustomAppBarDynamic(
    //       preferredSize: const Size.fromHeight(100),
    //       titleTxt: 'Notifications',
    //       useCustomWidget: true,
    //       customWidget: TabBar(
    //           indicatorColor: const Color(0xFFEF2B7B),
    //           indicatorWeight: 2,
    //           labelColor: const Color(0xFFEF2B7B),
    //           labelStyle: Theme.of(context)
    //               .textTheme
    //               .displayMedium!
    //               .copyWith(fontWeight: FontWeight.w700),
    //           unselectedLabelColor: Colors.black,
    //           unselectedLabelStyle: Theme.of(context)
    //               .textTheme
    //               .displayMedium!
    //               .copyWith(fontWeight: FontWeight.w700),
    //           indicatorSize: TabBarIndicatorSize.tab,
    //           tabs: const [
    //             Tab(text: 'Messages'),
    //             // Tab(text: 'Calls'),
    //             // Tab(text: 'Group'),
    //           ]),
    //     ),
    //     body: const TabBarView(
    //       children: [
    //         Message(),
    //         // Center(child: Text('Calls Tab')),
    //         // Center(child: Text('Group Tab')),
    //       ],
    //     ),
    //   ),
    // );
  }
}
