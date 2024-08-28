import 'package:ecomapp/features/authentication/controllers.onboarding/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:ecomapp/utils/device/device_utility.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class onBoardingDotNavigation extends StatelessWidget {
  const onBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(controller: controller.pageController, count: 3,onDotClicked: controller.dotNavigationOnClick ,
          effect: ExpandingDotsEffect(activeDotColor:dark? TColors.white:TColors.dark,dotHeight: 6),));
  }
}