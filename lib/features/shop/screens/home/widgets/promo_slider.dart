import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/circural_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/d_rounded_image.dart';
import 'package:flutter_ecommerce_app/features/shop/controllers/home_controller.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';

class DPromoSlider extends StatelessWidget {
  const DPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => DRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: DSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  DCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor:
                        controller.carouselCurrentIndex.value == i
                            ? DColors.primary
                            : DColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
