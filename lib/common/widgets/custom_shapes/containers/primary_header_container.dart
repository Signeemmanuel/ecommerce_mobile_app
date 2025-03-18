import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        foregroundDecoration: BoxDecoration(
          color: isDark ? TColors.dark.withValues(alpha: 0.1) : null
        ),
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            /// Background custom shapes
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(
                backgroundColor: isDark ? TColors.dark.withValues(alpha: 0.1) : TColors.textWhite.withValues(alpha: 0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(
                backgroundColor: isDark ? TColors.dark.withValues(alpha: 0.1) : TColors.textWhite.withValues(alpha: 0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
