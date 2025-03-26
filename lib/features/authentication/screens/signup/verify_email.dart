import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(DImages.deliveredEmailIllustration),
                width: DHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: DSizes.spaceBtwSections),

              /// Title & SubTitle
              Text(
                DTexts.confirmEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: DSizes.spaceBtwItems),
              Text(
                'support@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: DSizes.spaceBtwItems),
              Text(
                DTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: DSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:
                      () => Get.to(
                        () => SuccessScreen(
                          image: DImages.staticSuccessIllustration,
                          title: DTexts.yourAccountCreatedTitle,
                          subTitle: DTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        ),
                      ),
                  child: const Text(DTexts.dContinue),
                ),
              ),
              const SizedBox(height: DSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(DTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
