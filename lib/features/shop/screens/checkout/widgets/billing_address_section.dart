import 'package:ecommerce_mobile_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {},),
        SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            Icon(Icons.phone, color: TColors.grey, size: 16),
            SizedBox(width: TSizes.spaceBtwItems),
            Text('+237 677876963', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            Icon(Icons.location_history, color: TColors.grey, size: 16),
            SizedBox(width: TSizes.spaceBtwItems),
            Text('Yaounde, Center, Cameroon', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
      ],
    );
  }
}
