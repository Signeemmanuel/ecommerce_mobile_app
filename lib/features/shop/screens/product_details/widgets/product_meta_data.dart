import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_mobile_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/enums.dart';
import 'package:ecommerce_mobile_app/utils/constants/image_strings.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:ecommerce_mobile_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// --- Price & Sale Price
        Row(
          children: [
            /// --- Sale tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withValues(alpha: 0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            /// --- Price
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                    decoration: TextDecoration.lineThrough,
                  ),
            ),
            SizedBox(width: TSizes.spaceBtwItems),
            TProductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// --- Title
        TProductTitleText(title: 'Green Nike Sports shirt'),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// --- Stock Status
        Row(
          children: [
            TProductTitleText(title: 'Status'),
            SizedBox(height: TSizes.spaceBtwItems),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// --- Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.cosmeticIcon,
              width: 32,
              height: 32,
              overlayColor: isDark ? TColors.white : TColors.black,
            ),
            TBrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            )
          ],
        )
      ],
    );
  }
}
