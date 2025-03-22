import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/text_theme.dart';

// -- App Theme --
class DAppTheme {
  DAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: DTextTheme.lightTextTheme,
    chipTheme: DChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: DAppBarTheme.lightAppBarTheme,
    checkboxTheme: DCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: DBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: DElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: DOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: DTextFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: DTextTheme.darkTextTheme,
    chipTheme: DChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: DAppBarTheme.darkAppBarTheme,
    checkboxTheme: DCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: DBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: DElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: DOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: DTextFieldTheme.darkInputDecorationTheme,
  );
}
