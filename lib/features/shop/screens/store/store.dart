import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/container/rounded_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/d_circular_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/d_brand_title_with_verified_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/enums.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [DCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsBuilder) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor:
                  DHelperFunctions.isDarkMode(context)
                      ? DColors.black
                      : DColors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(
                padding: EdgeInsets.all(DSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// -- SearchBar
                    const SizedBox(height: DSizes.spaceBtwItems),
                    const DSearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: DSizes.spaceBtwSections),

                    /// -- Featured Brands
                    DSectionHeading(title: 'Featured Brands', onPressed: () {}),
                    const SizedBox(height: DSizes.spaceBtwItems / 1.5),

                    ///
                    DGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: DRoundedContainer(
                            padding: const EdgeInsets.all(DSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                /// -- Icons
                                Flexible(
                                  child: DCircularImage(
                                    isNetworkImage: false,
                                    image: DImages.clothIcon,
                                    backgroundColor: Colors.transparent,
                                    overPlayColor:
                                        DHelperFunctions.isDarkMode(context)
                                            ? DColors.white
                                            : DColors.black,
                                  ),
                                ),
                                const SizedBox(width: DSizes.spaceBtwItems / 2),

                                /// -- Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const DBrandTitleWithVerifiedIcon(
                                        title: 'Adidas',
                                        brandTextSizes: TextSizes.large,
                                      ),
                                      Text(
                                        '256 products with special discount and New Collection Album Spings',
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
