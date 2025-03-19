import 'package:ecommerce_mobile_app/common/icons/circular_icon.dart';
import 'package:ecommerce_mobile_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_mobile_app/common/widgets/images/rounded_images.dart';
import 'package:ecommerce_mobile_app/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce_mobile_app/common/widgets/products/cart/product_quantity_with_add_and_remove_button.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/image_strings.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:ecommerce_mobile_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 6,
          separatorBuilder: (_, __) =>
              SizedBox(height: TSizes.spaceBtwSections),
          itemBuilder: (_, index) => Column(
            children: [
              TCartItem(),
              SizedBox(height: TSizes.spaceBtwItems),
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
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: TSizes.defaultSpace,
          right: TSizes.defaultSpace,
          bottom: TSizes.defaultSpace,
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
