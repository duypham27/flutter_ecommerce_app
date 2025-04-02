import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/d_rounded_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const DRoundedImage(
                width: double.infinity,
                height: null,
                imageUrl: DImages.promoBanner1,
                applyImageRadius: true,
              ),
              const SizedBox(height: DSizes.spaceBtwSections),

              /// Sub-Categories
              /// Column 1
              Column(
                children: [
                  /// Heading
                  DSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: DSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder:
                          (context, index) =>
                              const SizedBox(width: DSizes.spaceBtwItems),
                      itemBuilder:
                          (context, index) => const DProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: DSizes.spaceBtwSections),

              /// Column 2
              Column(
                children: [
                  /// Heading
                  DSectionHeading(title: 'Furnitures', onPressed: () {}),
                  const SizedBox(height: DSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder:
                          (context, index) =>
                              const SizedBox(width: DSizes.spaceBtwItems),
                      itemBuilder:
                          (context, index) => const DProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: DSizes.spaceBtwSections),

              /// Column 3
              Column(
                children: [
                  /// Heading
                  DSectionHeading(title: 'Toys', onPressed: () {}),
                  const SizedBox(height: DSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder:
                          (context, index) =>
                              const SizedBox(width: DSizes.spaceBtwItems),
                      itemBuilder:
                          (context, index) => const DProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: DSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
