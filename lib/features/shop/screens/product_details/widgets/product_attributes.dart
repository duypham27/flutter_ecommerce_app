import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/chips/choice_chip.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:get/state_manager.dart';

class DProductAttributes extends StatelessWidget {
  const DProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        DRoundedContainer(
          padding: const EdgeInsets.all(DSizes.md),
          backgroundColor: dark ? DColors.darkerGrey : DColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  const DSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: DSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const DProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),
                          const SizedBox(width: DSizes.spaceBtwItems),

                          /// Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: DSizes.spaceBtwItems),

                          /// Sale Price
                          const DProductPriceText(price: '20'),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const DProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Description
              DProductTitleText(
                title:
                    'This is the Description of the Product and it can go up to max 4 lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),

        const SizedBox(height: DSizes.spaceBtwItems),

        /// -- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: DSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,

              children: [
                DChoiceChip(
                  text: 'Green',
                  selected: false,
                  onSelected: (value) {},
                ),
                DChoiceChip(
                  text: 'Blue',
                  selected: true,
                  onSelected: (value) {},
                ),
                DChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DSectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: DSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                DChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                DChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                DChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
