import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/core/constant/app_colos.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/gen/fonts.gen.dart';
import 'package:weather_app/presentation/common_widget/app_text.dart';
import 'package:weather_app/presentation/routers/router_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  int time = 3;
  late bool isNightTime;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DateTime now = DateTime.now();
    isNightTime = now.hour >= 18 || now.hour < 6;
    _splash();
  }
  Future<void> _splash() async{
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      time--;
      if(time == 0){
        Navigator.pushNamed(context, RouterName.home);
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isNightTime ? AppColors.dark : AppColors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.transparent, BlendMode.srcATop),
                child: SvgPicture.asset(
                  Assets.images.cloundy,
                  width: 1.sw / 3,
                  height: 1.sw/3,
                ),
            ),
            SizedBox(height: 36.h,),
            Column(
              children: [
                AppText('Cloudy', fontSize: 34.sp, color: AppColors.white, family: FontFamily.poppins, fontWeight: FontWeight.bold,),
                AppText('Dont worry about \n the weather we all here', fontSize: 16.sp, color: AppColors.white, family: FontFamily.poppins, fontWeight: FontWeight.w400, textAlign: TextAlign.center,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
