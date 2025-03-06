import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TCheckboxThemeData {
  TCheckboxThemeData._();

  /// --- light theme
  static CheckboxThemeData lightCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.all(TColors.white),
    fillColor: WidgetStateProperty.resolveWith((states) {
      return states.contains(WidgetState.selected)
          ? TColors.primary
          : Colors.transparent;
    }),
    side: WidgetStateBorderSide.resolveWith((states) {
      return BorderSide(
        color:
            states.contains(WidgetState.selected) ? TColors.primary : TColors.black,
      );
    }),
  );

  /// --- dark theme
  static CheckboxThemeData darkCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.all(TColors.white),
    fillColor: WidgetStateProperty.resolveWith((states) {
      return states.contains(WidgetState.selected)
          ? TColors.primary
          : Colors.transparent;
    }),
    side: WidgetStateBorderSide.resolveWith((states) {
      return BorderSide(
        color:
        states.contains(WidgetState.selected) ? TColors.primary : TColors.white,
      );
    }),
  );

}
