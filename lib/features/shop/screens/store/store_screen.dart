import 'package:ecommerce_mobile_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_mobile_app/common/widgets/appbar/tab_bar.dart';
import 'package:ecommerce_mobile_app/common/widgets/brand/brand_card.dart';
import 'package:ecommerce_mobile_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_mobile_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_mobile_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_mobile_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_mobile_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecommerce_mobile_app/utils/constants/colors.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:ecommerce_mobile_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium,
          ),
          actions: [
            TCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: isDark ? TColors.black : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [

                      /// --- Search Bar
                      SizedBox(height: TSizes.spaceBtwItems),
                      TSearchContainer(
                        text: 'Search in store',
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: TSizes.spaceBtwSections),

                      /// --- Featured Brands
                      TSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return TBrandCard(showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),

                /// --- Tab Bar
                bottom: TTabBar(
                  tabs: [
                    Tab(child: Text("Sports")),
                    Tab(child: Text("Furniture")),
                    Tab(child: Text("Electronics")),
                    Tab(child: Text("Cloths")),
                    Tab(child: Text("Cosmetics")),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(children: [
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
          ]),
        ),
      ),
    );
  }
}
