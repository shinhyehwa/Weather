import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/presentation/routers/app_router.dart';

import '../core/utils/AppUtils.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375, 812),
      builder: (context, child) =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            builder:(context, child) {
              return GestureDetector(
                onTap: () {
                  AppUtils.dismissKeyboard();
                },
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
                  child: child!,
                ),
              );
            },
            onGenerateRoute: AppRouter().onGenerateRoute,
          ),
    );
  }
}
