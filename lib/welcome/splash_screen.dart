import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../widgets/custom_image_view.dart';
import 'onboarding_one_screen.dart';




class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Get.to(OnboardingOneScreen);
     });
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgGroup162797,
                height: getVerticalSize(
                  153,
                ),
                width: getHorizontalSize(
                  102,
                ),
                margin: getMargin(
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
