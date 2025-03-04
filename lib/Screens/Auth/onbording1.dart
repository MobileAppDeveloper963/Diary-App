import 'package:diary_app/Routes/app_routes.dart';
import 'package:diary_app/core/Custom%20Widget/custom_button.dart';
import 'package:diary_app/core/Extension/extension.dart';
import 'package:diary_app/core/utils/Themes/app_color.dart';
import 'package:diary_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class OnBording extends StatelessWidget {
  final pageController = PageController();
  List images = [AppImages.amico, AppImages.cuate];
  List text1 = ["Take Notes", "To-dos"];
  List text2 = [
    "Quickly capture what’s on your mind",
    " out your day-to-day tasks"
  ];
  OnBording({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: PageView.builder(
              controller: pageController,
              itemCount: 2,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Column(children: [
                    15.h.height,
                    SvgPicture.asset(images[index]),
                    8.h.height,
                    Text(
                      text1[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(text2[index]),
                    8.h.height,
                    SmoothPageIndicator(
                      controller: pageController,
                      count: 2,
                      axisDirection: Axis.horizontal,
                      effect: const ExpandingDotsEffect(
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 10.0,
                        dotHeight: 7.0,
                        strokeWidth: 1.5,
                        dotColor: Color(0xffE2E8F0),
                        activeDotColor: AppColors.primaryColor,
                      ),
                    ),
                  ]),
                );
              }),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          child: MainButton(
            text: "Next",
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.login);
            },
          ),
        ));
  }
}
