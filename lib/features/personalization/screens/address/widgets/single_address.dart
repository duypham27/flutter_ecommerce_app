import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class DSingleAddress extends StatelessWidget {
  const DSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return DRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(DSizes.md),
      backgroundColor:
          selectedAddress
              ? DColors.primary.withOpacity(0.5)
              : Colors.transparent,
      borderColor:
          selectedAddress
              ? Colors.transparent
              : dark
              ? DColors.darkGrey
              : DColors.grey,
      margin: const EdgeInsets.only(bottom: DSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color:
                  selectedAddress
                      ? dark
                          ? DColors.light
                          : DColors.dark
                      : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: DSizes.sm / 2),
              const Text(
                '+84 1234 56789',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: DSizes.sm / 2),
              const Text(
                '4343535 Lac Long Quan.Rd, Phuoc Hai Town, Dat Do, BR - VT Province, Ho Chi Minh City, Vietnam',
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
