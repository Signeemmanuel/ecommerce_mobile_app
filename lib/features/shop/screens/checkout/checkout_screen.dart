import 'package:ecommerce_mobile_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_mobile_app/common/widgets/products/cart/coupon_code.dart';
import 'package:ecommerce_mobile_app/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce_mobile_app/navigation_menu.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/image_strings.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:ecommerce_mobile_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// --- Items in Cart
              TCartItems(showAddRemoveButtons: false),
              SizedBox(height: TSizes.spaceBtwSections),

              /// --- Coupon Text Field
              TCouponCode(),
              SizedBox(height: TSizes.spaceBtwSections),

              /// --- Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(TSizes.md),
                backgroundColor: isDark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    /// --- Pricing
                    TBillingAmountSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// --- Divider
                    const Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// --- Payment Method
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// --- Address
                    TBillingAddressSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// ---
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      /// --- Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: TSizes.defaultSpace,
          right: TSizes.defaultSpace,
          bottom: TSizes.defaultSpace,
        ),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: 'Payment Successful',
              subTitle: 'Your item will be shipped Soon',
              onPressed: () => Get.offAll(() => NavigationMenu()),
            ),
          ),
          child: Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
