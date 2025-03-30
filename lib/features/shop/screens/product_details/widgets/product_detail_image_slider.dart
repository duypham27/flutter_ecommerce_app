import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_ecommerce_app/common/widgets/icons/d_circular_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/d_rounded_image.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class DProductImageSlider extends StatelessWidget {
  const DProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return DCurvedEdgeWidget(
      child: Container(
        color: dark ? DColors.darkerGrey : DColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(DSizes.productImageRadius * 2),
                child: Center(
                  child: Image(image: AssetImage(DImages.productImage5)),
                ),
              ),
            ),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: DSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder:
                      (_, __) => const SizedBox(width: DSizes.spaceBtwItems),
                  itemBuilder:
                      (_, index) => DRoundedImage(
                        width: 80,
                        backgroundColor: dark ? DColors.dark : DColors.white,
                        border: Border.all(color: DColors.primary),
                        padding: const EdgeInsets.all(DSizes.sm),
                        imageUrl: DImages.productImage2,
                      ),
                ),
              ),
            ),

            /// Appbar Icons
            DAppBar(
              showBackArrow: true,
              actions: [DCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}
