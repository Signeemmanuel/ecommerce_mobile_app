import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_mobile_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:ecommerce_mobile_app/utils/constants/enums.dart';
import 'package:ecommerce_mobile_app/utils/constants/image_strings.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},

      /// --- Container Design
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.md),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [

            /// --- icon
            Flexible(
              child: TCircularImage(
                image: TImages.clothIcon,
                backgroundColor: Colors.transparent,
                // overlayColor: isDark ? TColors.white : TColors.black,
              ),
            ),
            SizedBox(width: TSizes.spaceBtwItems / 2),

            /// --- Text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '25% products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme
                        .of(context)
                        .textTheme
                        .labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
