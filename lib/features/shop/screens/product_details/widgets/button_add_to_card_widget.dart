import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/icons/d_circular_icon.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class DBottomAddToCart extends StatelessWidget {
  const DBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: DSizes.defaultSpace,
        vertical: DSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? DColors.darkerGrey : DColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(DSizes.cardRadiusLg),
          topRight: Radius.circular(DSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const DCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: DColors.darkGrey,
                width: 40,
                height: 40,
                color: DColors.white,
              ),
              const SizedBox(width: DSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: DSizes.spaceBtwItems),

              const DCircularIcon(
                icon: Iconsax.add,
                backgroundColor: DColors.black,
                width: 40,
                height: 40,
                color: DColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(DSizes.md),
              backgroundColor: DColors.black,
              side: const BorderSide(color: DColors.black),
            ),
            child: const Text('Add to cart'),
          ),
        ],
      ),
    );
  }
}
