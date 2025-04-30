import 'package:ecommerce_mobile_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/order/widgets/order_list_items.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// AppBar
      appBar: TAppBar(
        title: Text(
          "My Orders",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
      child: TOrderListItems(),),

    );
  }
}
