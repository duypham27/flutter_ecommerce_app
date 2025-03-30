import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/button_add_to_card_widget.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: DBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            DProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: EdgeInsets.only(
                right: DSizes.defaultSpace,
                left: DSizes.defaultSpace,
                bottom: DSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// - Rating & Share Button
                  DRatingAndShare(),

                  /// - Price, Title, Stack & Brand
                  DProductMetaData(),

                  /// -- Attributes
                  DProductAttributes(),
                  const SizedBox(height: DSizes.spaceBtwSections),

                  /// -- Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: DSizes.spaceBtwSections),

                  /// -- Description
                  const DSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: DSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a Product description for Blue Adidas Sleeve less vest. There are more things that can be added but i am dadwadwadawwwwwwwwwwwwwwwwwwwwwwwwwwaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  /// - Reviews
                  const Divider(),
                  const SizedBox(height: DSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const DSectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: DSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
