import 'package:ecommerce_mobile_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTitle extends StatelessWidget {
  const TUserProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        image: TImages.user1,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "Coding bro",
        style: Theme.of(context).textTheme.headlineSmall!.apply(
          color: TColors.white,
        ),
      ),
      subtitle: Text(
        "support@gmail.com",
        style: Theme.of(context).textTheme.bodyMedium!.apply(
          color: TColors.white,
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Iconsax.edit, color: TColors.white,),
      ),
    );
  }
}
