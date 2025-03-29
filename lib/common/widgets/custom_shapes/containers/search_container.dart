import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class DSearchContainer extends StatelessWidget {
  const DSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: DSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: DDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(DSizes.md),
          decoration: BoxDecoration(
            color:
                showBackground
                    ? dark
                        ? DColors.dark
                        : DColors.light
                    : Colors.transparent,
            borderRadius: BorderRadius.circular(DSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: DColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: DColors.darkerGrey),
              const SizedBox(width: DSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
