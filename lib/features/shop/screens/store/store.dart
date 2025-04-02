import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/tabbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/all_brands/all_brands.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        /// -- AppBar
        appBar: DAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [DCartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          /// -- Header
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
                      DSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () => Get.to(() => const AllBrandsScreen()),
                      ),
                      const SizedBox(height: DSizes.spaceBtwItems / 1.5),

                      /// -- Brands GRID
                      DGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const DBrandCard(showBorder: false);
                        },
                      ),
                    ],
                  ),
                ),

                /// Tabs
                bottom: DTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                    Tab(child: Text('Toys')),
                  ],
                ),
              ),
            ];
          },

          /// -- Body
          body: const TabBarView(
            children: [
              DCategoryTab(),
              DCategoryTab(),
              DCategoryTab(),
              DCategoryTab(),
              DCategoryTab(),
              DCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
