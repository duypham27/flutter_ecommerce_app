import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(title: Text('Adidas'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Detail
              DBrandCard(showBorder: true),
              SizedBox(height: DSizes.spaceBtwSections),

              DSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
