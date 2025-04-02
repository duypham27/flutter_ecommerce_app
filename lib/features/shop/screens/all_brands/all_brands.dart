import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/all_brands/brand_products.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Heading
              const DSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: DSizes.spaceBtwItems),

              /// -- Brands
              DGridLayout(
                mainAxisExtent: 80,
                itemCount: 10,
                itemBuilder:
                    (context, index) => DBrandCard(
                      showBorder: true,
                      onTap: () => Get.to(() => const BrandProducts()),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
