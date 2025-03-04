import 'dart:async';
import 'package:diary_app/Routes/app_routes.dart';
import 'package:diary_app/core/utils/Themes/app_color.dart';
import 'package:diary_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushNamed(context, AppRoutes.onBording);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(AppImages.frame)),
            ),
            Align(
                alignment: Alignment.center,
                child: Image.asset(AppImages.frame2)),
            Expanded(
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(AppImages.frame1))),
          ],
        ));
  }
}
