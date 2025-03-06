import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_mobile_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_mobile_app/common/widgets/products/product_carts/product_cart_vertical.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/image_strings.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// --- AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// --- SearchBar
                  TSearchContainer(
                    text: "Search in Store",
                    onTap: () {},
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// --- Categories section
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// --- heading
                        TSectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        /// --- List of Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// --- Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// --- Promo Slider
                  PromoSlider(
                    bannerImageUrls: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// --- Heading
                  TSectionHeading(title: "Popular products", onPressed: (){},),
                  SizedBox(height: TSizes.spaceBtwItems),

                  /// --- Popular products
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => TProductCartVertical(),
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
