import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:get/get_utils/get_utils.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: DHelperFunctions.screenWidth() * 0.6,
                    height: DHelperFunctions.screenHeigth() * 0.6,
                    image: const AssetImage(DImages.onBoardingImage1),
                  ),
                  Text(
                    DTexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: DSizes.spaceBtwItems),
                  Text(
                    DTexts.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),

          /// Skip Button

          /// Dot Navigation SmoothPageIndicator

          /// Circular Button
        ],
      ),
    );
  }
}
