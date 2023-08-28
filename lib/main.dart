import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wedzy/Utils/themedata.dart';
import 'package:wedzy/resources/routes/route_name.dart';
import 'package:wedzy/resources/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => GetMaterialApp(
        title: 'Wedzy',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(),


        initialRoute: '/',


        getPages: AppRoutes.appRoutes(),
      ),
      designSize: Size(360, 800),
    );
  }
}
