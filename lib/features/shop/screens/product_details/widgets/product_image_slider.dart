import 'package:ecommerce_mobile_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_mobile_app/common/widgets/images/rounded_images.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/image_strings.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:ecommerce_mobile_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);

    return TCurvedEdgeWidget(
      child: Container(
        color: isDark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            /// --- Main Large Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(TSizes.productItemRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(TImages.productImage1),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            /// --- Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  separatorBuilder: (_, __) => SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemBuilder: (_, index) => TRoundedImage(
                    width: 80,
                    imageUrl: TImages.productImage1,
                    border: Border.all(color: TColors.primary),
                    padding: EdgeInsets.all(TSizes.sm),
                    backgroundColor: isDark ? TColors.dark : TColors.white,
                  ),
                ),
              ),
            ),

            /// --- AppBar Icons
            TAppBar(
              showBackArrow: true,
              actions: [
                Icon(
                  Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
