import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return Scaffold(
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
                  /// -- Checkout Button
                  /// -- Description
                  /// - Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
