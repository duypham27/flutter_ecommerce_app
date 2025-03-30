import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/d_circular_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/d_brand_title_with_verified_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/enums.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class DProductMetaData extends StatelessWidget {
  const DProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            DRoundedContainer(
              radius: DSizes.sm,
              backgroundColor: DColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: DSizes.sm,
                vertical: DSizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(color: DColors.black),
              ),
            ),
            const SizedBox(width: DSizes.spaceBtwItems),

            /// Price
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: DSizes.spaceBtwItems),
            const DProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(width: DSizes.spaceBtwItems / 1.5),

        /// Title
        const DProductTitleText(title: 'White Adidas Sports Shoe'),
        const SizedBox(width: DSizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const DProductTitleText(title: 'Status'),
            const SizedBox(width: DSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(width: DSizes.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            DCircularImage(
              image: DImages.shoeIcon,
              width: 32,
              height: 32,
              overPlayColor: dark ? DColors.white : DColors.black,
            ),
            const DBrandTitleWithVerifiedIcon(
              title: 'Adidas',
              brandTextSizes: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
