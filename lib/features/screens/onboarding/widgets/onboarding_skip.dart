import 'package:flutter/material.dart';
import 'package:ecomapp/utils/device/device_utility.dart';
import '../../../../utils/constants/sizes.dart';
import '../../controllers.onboarding/on_boarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
            onPressed: ()=> OnBoardingController.instance.skipPage(),
            child: Text('Skip',style: Theme.of(context).textTheme.bodyMedium)));
  }
}