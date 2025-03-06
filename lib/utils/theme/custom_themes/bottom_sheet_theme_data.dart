import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TBottomSheetThemeData {
  TBottomSheetThemeData._();

  /// --- light theme
  static BottomSheetThemeData lightBottomSheetThemeData = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: TColors.white,
    modalBackgroundColor: TColors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  /// --- dark theme
  static BottomSheetThemeData darkBottomSheetThemeData = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: TColors.black,
    modalBackgroundColor: TColors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

}
