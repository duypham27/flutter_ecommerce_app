import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class DBillingPaymentSection extends StatelessWidget {
  const DBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        DSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: DSizes.spaceBtwItems / 2),
        Row(
          children: [
            DRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? DColors.light : DColors.white,
              padding: const EdgeInsets.all(DSizes.sm),
              child: const Image(
                image: AssetImage(DImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: DSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
