import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/icons/d_circular_icon.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class DProductQuantityWithAddRemoveButton extends StatelessWidget {
  const DProductQuantityWithAddRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: DSizes.md,
          color:
              DHelperFunctions.isDarkMode(context)
                  ? DColors.white
                  : DColors.black,
          backgroundColor:
              DHelperFunctions.isDarkMode(context)
                  ? DColors.darkerGrey
                  : DColors.light,
        ),
        const SizedBox(width: DSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: DSizes.spaceBtwItems),

        DCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: DSizes.md,
          color: DColors.white,
          backgroundColor: DColors.primary,
        ),
      ],
    );
  }
}
