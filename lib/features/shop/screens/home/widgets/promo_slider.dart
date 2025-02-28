import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_mobile_app/common/widgets/images/rounded_images.dart';
import 'package:ecommerce_mobile_app/features/shop/controllers/home_controller.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/image_strings.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.bannerImageUrls,
  });

  final List<String> bannerImageUrls;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: [for(String imageUrl in bannerImageUrls) TRoundedImage(imageUrl: imageUrl)],
        ),
        SizedBox(height: TSizes.spaceBtwItems),
        Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < bannerImageUrls.length; i++)
                TCircularContainer(
                  width: 20,
                  height: 4,
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                  margin: EdgeInsets.only(right: 5),
                ),
            ],
          );
        })
      ],
    );
  }
}
