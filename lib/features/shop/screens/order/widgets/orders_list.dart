import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class DOrderListItems extends StatelessWidget {
  const DOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: DSizes.spaceBtwItems),
      itemBuilder:
          (_, index) => DRoundedContainer(
            showBorder: true,
            padding: EdgeInsets.all(DSizes.md),
            backgroundColor: dark ? DColors.dark : DColors.light,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// -- Row 1
                Row(
                  children: [
                    /// 1- Icon
                    const Icon(Iconsax.ship),
                    const SizedBox(width: DSizes.spaceBtwItems / 2),

                    /// 2 - Status & Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Processing',
                            style: Theme.of(context).textTheme.bodyLarge!.apply(
                              color: DColors.primary,
                              fontWeightDelta: 1,
                            ),
                          ),
                          Text(
                            '07 Apr 2025',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                    ),

                    /// 3 - Icon
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Iconsax.arrow_right_34, size: DSizes.iconSm),
                    ),
                  ],
                ),
                const SizedBox(height: DSizes.spaceBtwItems),

                /// -- Row 2
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          /// 1- Icon
                          const Icon(Iconsax.tag),
                          const SizedBox(width: DSizes.spaceBtwItems / 2),

                          /// 2 - Status & Date
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  '[#256f2]',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          /// 1- Icon
                          const Icon(Iconsax.calendar),
                          const SizedBox(width: DSizes.spaceBtwItems / 2),

                          /// 2 - Status & Date
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Shipping Date',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  '24 Marc 2025',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}
