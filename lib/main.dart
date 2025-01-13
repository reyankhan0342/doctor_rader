import 'package:doc_radar_app/core/view/dashbord/dashboard.dart';
import 'package:doc_radar_app/core/view/help/help_center.dart';
import 'package:doc_radar_app/core/view/home_screen/home_screen.dart';
import 'package:doc_radar_app/core/view/priavcy/priacy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: child,
        );
      },
      child: const CustomDashboard(),

      //  CustomDashboard(),
    );
  }
}
