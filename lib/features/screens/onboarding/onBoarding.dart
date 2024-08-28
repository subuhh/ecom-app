import 'package:ecomapp/features/authentication/screens.onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecomapp/features/authentication/screens.onboarding/widgets/onboarding_nextbutton.dart';
import 'package:ecomapp/features/authentication/screens.onboarding/widgets/onboarding_page.dart';
import 'package:ecomapp/features/authentication/screens.onboarding/widgets/onboarding_skip.dart';
import 'package:ecomapp/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constants/text_strings.dart';
import '../controllers.onboarding/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// horizontal Scrollable Pages
          PageView(
            controller: controller.pageController ,
            children: [
              const OnBoardingPage(image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,),
              const  OnBoardingPage(image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,),
              const OnBoardingPage(image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,),
            ],
          ),


          /// Skip button
          OnBoardingSkip(),

          /// Dot Navigation SmmothPageIndicator
          onBoardingDotNavigation(),
          
          ///Circular Button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}




