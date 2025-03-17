import 'package:ecommerce_mobile_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_mobile_app/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:ecommerce_mobile_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// --- Appbar
      appBar: TAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      /// ---Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              SizedBox(height: TSizes.spaceBtwItems),

              /// --- Overall Product Rating
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.5,),
              Text('19,611', style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: TSizes.spaceBtwSections),

              /// --- User Review List
              TUserReviewCard(),
              TUserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
