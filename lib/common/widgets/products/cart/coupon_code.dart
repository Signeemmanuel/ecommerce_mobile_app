import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:ecommerce_mobile_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: isDark ? TColors.dark : TColors.white,
      padding: EdgeInsets.only(
        left: TSizes.md,
        right: TSizes.sm,
        top: TSizes.sm,
        bottom: TSizes.sm,
      ),
      child: Row(
        children: [
          /// --- TextField
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code, Enter here?',
                hintStyle: Theme.of(context).textTheme.bodySmall,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: isDark
                      ? TColors.white.withValues(alpha: 0.5)
                      : TColors.dark.withValues(alpha: 0.5),
                  backgroundColor: TColors.grey.withValues(alpha: 0.5),
                  side: BorderSide(color: TColors.grey.withValues(alpha: 0.7))),
              child: Text('Apply'),
            ),
          )
        ],
      ),
    );
  }
}
