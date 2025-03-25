import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class DLoginHeader extends StatelessWidget {
  const DLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? DImages.lightAppLogo : DImages.darkAppLogo),
        ),
        Text(
          DTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: DSizes.sm),
        Text(
          DTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
