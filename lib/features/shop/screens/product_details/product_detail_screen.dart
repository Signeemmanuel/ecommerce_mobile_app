import 'package:ecommerce_mobile_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_mobile_app/common/widgets/images/rounded_images.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/product_reviews/product_reviews_screen.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/image_strings.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:ecommerce_mobile_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --- Product Image Slider
            TProductImageSlider(),

            /// --- Product Details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// --- Rating and Share button
                  TRatingAndShare(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// --- Price. Title, Stack, & Brand
                  TProductMetaData(),

                  /// --- Attribute
                  TProductAttributes(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// --- Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// --- Description
                  TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),
                  ReadMoreText(
                    'This is a product description for blue Nike Sleeve less west. There are more things that can be added but I just practicing and nothing else',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// --- Reviews
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        title: 'Reviews (199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () => Get.to(() => ProductReviewsScreen()),
                        icon: Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
