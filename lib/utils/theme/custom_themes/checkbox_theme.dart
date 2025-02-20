import 'package:flutter/material.dart';

class TCheckboxThemeData {
  TCheckboxThemeData._();

  /// --- light theme
  static CheckboxThemeData lightCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.all(Colors.white),
    fillColor: WidgetStateProperty.resolveWith((states) {
      return states.contains(WidgetState.selected)
          ? Colors.blue
          : Colors.transparent;
    }),
    side: WidgetStateBorderSide.resolveWith((states) {
      return BorderSide(
        color:
            states.contains(WidgetState.selected) ? Colors.blue : Colors.black,
      );
    }),
  );

  /// --- dark theme
  static CheckboxThemeData darkCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.all(Colors.white),
    fillColor: WidgetStateProperty.resolveWith((states) {
      return states.contains(WidgetState.selected)
          ? Colors.blue
          : Colors.transparent;
    }),
    side: WidgetStateBorderSide.resolveWith((states) {
      return BorderSide(
        color:
        states.contains(WidgetState.selected) ? Colors.blue : Colors.white,
      );
    }),
  );

}
