import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/all_products/all_products.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            DPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  DHomeAppBar(),
                  SizedBox(height: DSizes.spaceBtwSections),

                  /// -- SearchBar
                  DSearchContainer(text: 'Search in Store'),
                  SizedBox(height: DSizes.spaceBtwSections),

                  /// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: DSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        DSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: DSizes.spaceBtwItems),

                        /// -- Categories
                        DHomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: DSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(DSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Promo Slider
                  const DPromoSlider(
                    banners: [
                      DImages.promoBanner1,
                      DImages.promoBanner2,
                      DImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: DSizes.spaceBtwSections),

                  /// -- Heading
                  DSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(height: DSizes.spaceBtwItems),

                  /// -- Popular Products
                  DGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const DProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
