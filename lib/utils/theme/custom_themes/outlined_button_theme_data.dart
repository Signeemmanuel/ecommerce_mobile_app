import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TOutlinedButtonThemeData {
  TOutlinedButtonThemeData._();

  /// ---light theme
  static OutlinedButtonThemeData lightOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.black,
      side: BorderSide(color: TColors.primary),
      textStyle: TextStyle(
        fontSize: 16,
        color: TColors.black,
        fontWeight: FontWeight.w400
      ),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );

  /// ---dark theme
  static OutlinedButtonThemeData darkOutlinedButtonThemeData = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: TColors.white,
          side: BorderSide(color: Colors.blueAccent),
          textStyle: TextStyle(
              fontSize: 16,
              color: TColors.white,
              fontWeight: FontWeight.w400
          ),
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      )
  );
}