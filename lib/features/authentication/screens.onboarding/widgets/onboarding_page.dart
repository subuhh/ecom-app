import 'package:flutter/material.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/sizes.dart';




class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Image(
            width: THelperFunctions.screenWidth() * 0.8,
            height:THelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),),
        ),
        Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Text(subtitle,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,)
      ],
    );
  }
}

