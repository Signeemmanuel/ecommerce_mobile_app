import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce_mobile_app/utils/theme/custom_themes/bottom_sheet_theme_data.dart';
import 'package:ecommerce_mobile_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce_mobile_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecommerce_mobile_app/utils/theme/custom_themes/elevated_button_theme_data.dart';
import 'package:ecommerce_mobile_app/utils/theme/custom_themes/input_decoration_theme.dart';
import 'package:ecommerce_mobile_app/utils/theme/custom_themes/outlined_button_theme_data.dart';
import 'package:ecommerce_mobile_app/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: TColors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonThemeData.lightElevatedButtonThemeData,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: TBottomSheetThemeData.lightBottomSheetThemeData,
    checkboxTheme: TCheckboxThemeData.lightCheckboxThemeData,
    chipTheme: TChipThemeData.lightChipThemeData,
    inputDecorationTheme: TInputDecorationTheme.lightInputDecorationTheme,
    outlinedButtonTheme: TOutlinedButtonThemeData.lightOutlinedButtonThemeData,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: TColors.black,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonThemeData.darkElevatedButtonThemeData,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetThemeData.darkBottomSheetThemeData,
    checkboxTheme: TCheckboxThemeData.darkCheckboxThemeData,
    chipTheme: TChipThemeData.darkChipThemeData,
    inputDecorationTheme: TInputDecorationTheme.darkInputDecorationTheme,
    outlinedButtonTheme: TOutlinedButtonThemeData.darkOutlinedButtonThemeData,
  );
}
