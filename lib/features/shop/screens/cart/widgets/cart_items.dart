import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class DCartItems extends StatelessWidget {
  const DCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder:
          (_, __) => const SizedBox(height: DSizes.spaceBtwSections),
      itemBuilder:
          (_, index) => Column(
            children: [
              /// Cart Item
              const DCartItem(),
              if (showAddRemoveButtons)
                const SizedBox(height: DSizes.spaceBtwItems),

              /// Add Remove Button Row with total Price
              if (showAddRemoveButtons)
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        /// Extra Space
                        SizedBox(width: 70),

                        /// Add Remove Buttons
                        DProductQuantityWithAddRemoveButton(),
                      ],
                    ),

                    /// Product Total Price
                    DProductPriceText(price: '256'),
                  ],
                ),
            ],
          ),
    );
  }
}
