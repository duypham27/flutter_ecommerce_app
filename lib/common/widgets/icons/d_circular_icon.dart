import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class DCircularIcon extends StatelessWidget {
  /// A custom Circular Icon widget with a background color,
  ///
  /// Properties are:
  /// Container [width], [height] & [backgroundColor]
  ///
  /// Icon's [size], [color] & [onPressed]

  const DCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = DSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color:
            backgroundColor != null
                ? backgroundColor!
                : DHelperFunctions.isDarkMode(context)
                ? DColors.black.withOpacity(0.9)
                : DColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color, size: size),
      ),
    );
  }
}
