import 'package:ecommerce_mobile_app/common/widgets/chip/choice_chip.dart';
import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:ecommerce_mobile_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// Selected Attribute Pricing and Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: isDark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock
              Row(
                children: [
                  TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),

                          /// Action Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),

                          SizedBox(width: TSizes.spaceBtwItems),

                          /// Sale Price
                          TProductPriceText(price: '20')
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          TProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              /// Variation Description
              TProductTitleText(
                title:
                    'This is the description of the product and it can go up to 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        SizedBox(height: TSizes.spaceBtwItems),

        /// --- Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Colors', showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value) {},),
                TChoiceChip(text: 'Green', selected: true, onSelected: (value) {},),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {},),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Size', showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 34', selected: true, onSelected: (value) {},),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {},),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value) {},),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

