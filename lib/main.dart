import 'package:dummy_youtube/common/constants/color_constant.dart';
import 'package:dummy_youtube/views/home_view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.transparent, // navigation bar color
      statusBarColor: AppColors.white, // status bar color
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) {
        return MaterialApp(
          title: 'Youtube Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: AppColors.white,
            appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.white,
            ),
          ),
          home: const HomeView(),
        );
      },
    );
  }
}
