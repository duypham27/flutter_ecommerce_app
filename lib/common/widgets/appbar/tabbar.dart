import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class DTabBar extends StatelessWidget implements PreferredSizeWidget {
  // If you want to add the background color to tabs you have to wrap then in Material Widget
  // To do that we need [PreferredSized] widget and that's why created class. [PreferredSizeWidget]
  const DTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? DColors.black : DColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: DColors.primary,
        labelColor: dark ? DColors.white : DColors.primary,
        unselectedLabelColor: DColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DDeviceUtils.getAppBarHeight());
}
