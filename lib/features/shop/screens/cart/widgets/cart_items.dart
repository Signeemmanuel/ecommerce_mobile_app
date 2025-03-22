import 'package:ecommerce_mobile_app/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce_mobile_app/common/widgets/products/cart/product_quantity_with_add_and_remove_button.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => SizedBox(height: TSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          /// --- Cart Item
          TCartItem(),
          if (showAddRemoveButtons) SizedBox(height: TSizes.spaceBtwItems),

          /// --- Add & Remove Buttons Row with total Price
          if (showAddRemoveButtons)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    /// --- Extra Space
                    SizedBox(width: 70),

                    /// --- Add & Remove button
                    TProductQuantityWithAddAndRemoveButton(),
                  ],
                ),
                TProductPriceText(price: '250.0')
              ],
            ),
        ],
      ),
    );
  }
}
