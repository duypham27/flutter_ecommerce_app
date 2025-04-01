import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';

class DBillingAddressSection extends StatelessWidget {
  const DBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('An Duy Pham Bach', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: DSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: DSizes.spaceBtwItems),
            Text(
              '+84 1234 56789',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: DSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: DSizes.spaceBtwItems),
            Expanded(
              child: Text(
                'BR-VT Province, 123 Lac Long Quan, Vietnam',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
