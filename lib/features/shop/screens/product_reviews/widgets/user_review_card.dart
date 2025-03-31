import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(DImages.userProfileImage1),
                ),
                const SizedBox(width: DSizes.spaceBtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: DSizes.spaceBtwItems),

        /// Review
        Row(
          children: [
            const DRatingBarIndicator(rating: 4),
            const SizedBox(width: DSizes.spaceBtwItems),
            Text('01 Jan 2025', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: DSizes.spaceBtwItems),
        const ReadMoreText(
          'The user interface of the app is quite intuitive, i was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: DColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: DColors.primary,
          ),
        ),
        const SizedBox(height: DSizes.spaceBtwItems),

        /// Company Review
        DRoundedContainer(
          backgroundColor: dark ? DColors.darkerGrey : DColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(DSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "D's Store",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "17 Jan, 2025",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: DSizes.spaceBtwItems),
                const ReadMoreText(
                  'The user interface of the app is quite intuitive, i was able to navigate and make purchases seamlessly. Great job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: DColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: DColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: DSizes.spaceBtwSections),
      ],
    );
  }
}
