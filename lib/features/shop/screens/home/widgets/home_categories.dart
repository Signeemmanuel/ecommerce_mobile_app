import 'package:ecommerce_mobile_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:ecommerce_mobile_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: ListView.builder(
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.shoeIcon,
            title: 'shoes category',
            onTap: () {},
          );
        },
      ),
    );
  }
}
