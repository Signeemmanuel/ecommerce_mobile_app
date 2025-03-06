import 'package:ecommerce_mobile_app/common/widgets/brand/brand_showcase.dart';
import 'package:ecommerce_mobile_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_mobile_app/common/widgets/products/product_carts/product_cart_vertical.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_mobile_app/utils/constants/image_strings.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// --- Brands
              TBrandShowcase(
                images: [
                  TImages.productImage3,
                  TImages.productImage3,
                  TImages.productImage3
                ],
              ),

              /// --- Products
              TSectionHeading(
                title: "you might like",
                onPressed: () {},
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => TProductCartVertical(),
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              )
            ],
          ),
        ),
      ],
    );
  }
}
