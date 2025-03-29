import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class DBrandShowcase extends StatelessWidget {
  const DBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return DRoundedContainer(
      showBorder: true,
      borderColor: DColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(DSizes.md),
      margin: const EdgeInsets.only(bottom: DSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products Count
          const DBrandCard(showBorder: false),
          const SizedBox(height: DSizes.spaceBtwItems),

          /// Brand Top 3 Product Images
          Row(
            children:
                images
                    .map((image) => brandTopProductImageWidget(image, context))
                    .toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: DRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(DSizes.md),
      margin: const EdgeInsets.only(right: DSizes.md),
      backgroundColor:
          DHelperFunctions.isDarkMode(context)
              ? DColors.darkerGrey
              : DColors.light,
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}
