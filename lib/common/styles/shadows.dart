import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TShadows {
  TShadows._();

  static final verticalProductShadow = BoxShadow(
    color: TColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: TColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
