import 'package:ecommerce_mobile_app/common/icons/circular_icon.dart';
import 'package:ecommerce_mobile_app/common/styles/shadows.dart';
import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_mobile_app/common/widgets/images/rounded_images.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/enums.dart';
import 'package:ecommerce_mobile_app/utils/constants/image_strings.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:ecommerce_mobile_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCartVertical extends StatelessWidget {
  const TProductCartVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadows.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.cardRadiusMd),
          color: isDark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            /// --- Thumbnail, Wishlist button, Discount Tag
            TRoundedContainer(
              // padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: isDark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  /// --- Thumbnail image
                  TRoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                    height: 150,
                    borderRadius: TSizes.cardRadiusMd,
                  ),

                  /// --- Sale tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withValues(alpha: 0.8),
                      padding: EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                              color: TColors.black,
                            ),
                      ),
                    ),
                  ),

                  /// --- Favorite Icon
                  Positioned(
                    top: 4,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      width: 38,
                      height: 38,
                    ),
                  ),
                ],
              ),
            ),

            /// --- Details
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: 'Brown Bag for Journey',
                    smallSize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(title: 'Nike'),
                ],
              ),
            ),

            /// --- Add Spacer() here to keep the height of each Box same in case of 1 or 2 line headings
            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// --- Price
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(price: '35.5'),
                ),
                Container(
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.cardRadiusMd),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: TColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
