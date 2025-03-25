import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class DSocialButtons extends StatelessWidget {
  const DSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: DColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: DSizes.iconMd,
              height: DSizes.iconMd,
              image: AssetImage(DImages.google),
            ),
          ),
        ),

        const SizedBox(width: DSizes.spaceBtwItems),

        Container(
          decoration: BoxDecoration(
            border: Border.all(color: DColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: DSizes.iconMd,
              height: DSizes.iconMd,
              image: AssetImage(DImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
