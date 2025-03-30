import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/styles/shadows.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/icons/d_circular_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/d_rounded_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/d_brand_title_with_verified_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/product_detail.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class DProductCardVertical extends StatelessWidget {
  const DProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [DShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(DSizes.productImageRadius),
          color: dark ? DColors.darkerGrey : DColors.white,
        ),
        child: Column(
          children: [
            /// -- Thumbnail, Wishlist Button, Discount Tag
            DRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(DSizes.sm),
              backgroundColor: dark ? DColors.dark : DColors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  const DRoundedImage(
                    imageUrl: DImages.productImage1,
                    applyImageRadius: true,
                  ),

                  /// -- Sale Tag
                  Positioned(
                    top: 12,
                    child: DRoundedContainer(
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
                  ),

                  /// -- Favorite Icon Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: DCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: DSizes.spaceBtwItems / 2),

            /// -- Details
            const Padding(
              padding: EdgeInsets.only(left: DSizes.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DProductTitleText(
                      title: 'White Adidas Shoes',
                      smallSize: true,
                    ),
                    SizedBox(height: DSizes.spaceBtwItems / 2),
                    DBrandTitleWithVerifiedIcon(title: 'Adidas'),
                  ],
                ),
              ),
            ),

            // TODO: Add Spacer() here to keep the height of each Box same in case 1 or 2 lines of Headings
            const Spacer(),

            /// Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(
                  padding: EdgeInsets.only(left: DSizes.sm),
                  child: DProductPriceText(price: '35.0'),
                ),

                /// Add to Cart Button
                Container(
                  decoration: const BoxDecoration(
                    color: DColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(DSizes.cardRadiusMd),
                      bottomRight: Radius.circular(DSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: DSizes.iconLg * 1.2,
                    height: DSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(Iconsax.add, color: DColors.white),
                    ),
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
