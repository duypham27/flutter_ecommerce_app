import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';

class DHomeAppBar extends StatelessWidget {
  const DHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DTexts.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: DColors.grey),
          ),
          Text(
            DTexts.homeAppBarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: DColors.grey),
          ),
        ],
      ),
      actions: [DCartCounterIcon(onPressed: () {}, iconColor: DColors.white)],
    );
  }
}
