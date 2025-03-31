import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 10,
          separatorBuilder:
              (_, __) => const SizedBox(height: DSizes.spaceBtwSections),
          itemBuilder:
              (_, index) => Column(
                children: [
                  DCartItem(),
                  SizedBox(height: DSizes.spaceBtwItems),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          /// Extra Space
                          const SizedBox(width: 70),

                          /// Add Remove Buttons
                          const DProductQuantityWithAddRemoveButton(),
                        ],
                      ),

                      /// Product Total Price
                      DProductPriceText(price: '256'),
                    ],
                  ),
                ],
              ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
