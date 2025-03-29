import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/brands/brand_show_case.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class DCategoryTab extends StatelessWidget {
  const DCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Brands
              const DBrandShowcase(
                images: [
                  DImages.productImage1,
                  DImages.productImage2,
                  DImages.productImage3,
                ],
              ),
              const DBrandShowcase(
                images: [
                  DImages.productImage1,
                  DImages.productImage2,
                  DImages.productImage3,
                ],
              ),
              const SizedBox(height: DSizes.spaceBtwItems),

              /// -- Products
              DSectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: DSizes.spaceBtwItems),

              DGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const DProductCardVertical(),
              ),
              const SizedBox(height: DSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
