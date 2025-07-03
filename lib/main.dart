import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kano/routes/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      designSize: Size(width, height),
      ensureScreenSize: true,
      minTextAdapt: true,

      builder:
          (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            debugShowMaterialGrid: false,
            theme: ThemeData.dark(),
            initialRoute: "/home",
            routes: {"/home": (context) => HomePage()},
          ),
    );
  }
}
