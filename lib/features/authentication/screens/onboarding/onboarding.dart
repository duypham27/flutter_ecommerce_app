import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: DImages.onBoardingImage1,
                title: DTexts.onBoardingTitle1,
                subTitle: DTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: DImages.onBoardingImage2,
                title: DTexts.onBoardingTitle2,
                subTitle: DTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: DImages.onBoardingImage3,
                title: DTexts.onBoardingTitle3,
                subTitle: DTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
