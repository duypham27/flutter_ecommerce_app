import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/d_rounded_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/d_brand_title_with_verified_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class DCartItem extends StatelessWidget {
  const DCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        DRoundedImage(
          imageUrl: DImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(DSizes.sm),
          backgroundColor:
              DHelperFunctions.isDarkMode(context)
                  ? DColors.light
                  : DColors.dark,
        ),
        const SizedBox(width: DSizes.spaceBtwItems),

        /// Titles, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DBrandTitleWithVerifiedIcon(title: 'Adidas'),
              Flexible(
                child: const DProductTitleText(
                  title:
                      'White Adidas Shoe dawadwa dwqqweqdad  dqwd qd qd qdqwdwqdqd',
                  maxLines: 1,
                ),
              ),

              /// Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'UK 08',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
