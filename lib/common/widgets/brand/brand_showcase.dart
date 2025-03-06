
import 'package:ecommerce_mobile_app/common/widgets/brand/brand_card.dart';
import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:ecommerce_mobile_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      padding: EdgeInsets.all(TSizes.md),
      child: Column(
        children: [

          /// --- Brand with product count
          TBrandCard(showBorder: false),
          SizedBox(height: TSizes.spaceBtwItems,),

          /// --- Brand top 3
          Row(
            children: images.map((image) =>
                brandTopProductImageWidget(context, image)).toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(BuildContext context, String image) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor:
        isDark ? TColors.darkerGrey : TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

