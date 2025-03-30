import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';

// -- Chip Theme --
class DChipTheme {
  DChipTheme._();

  // -- Light Theme Chip --
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: DColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: DColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: DColors.white,
  );

  // -- Dark Theme Chip --
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: DColors.darkerGrey,
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: DColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: DColors.white,
  );
}
