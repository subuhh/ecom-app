import 'package:ecomapp/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:ecomapp/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../controllers.onboarding/on_boarding_controller.dart';


class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        right: TSizes.defaultSpace,
        child: ElevatedButton(
            onPressed: ()=>OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape: CircleBorder(),backgroundColor:dark?TColors.primary: Colors.black),
          child: Icon(Iconsax.arrow_right_3,color:Colors.white,),
        ));
  }
}
