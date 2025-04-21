import 'package:flutter/material.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/Second_image_slider_with_indicator.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/brands_section.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/horizontal_product_list.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/image_slider_with_indicator.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/most_popular_product.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/high_lights_section.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/popular_stores_section.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/shope_location_and_notifications.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/special_offer.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/top_offers_near_me.dart';
import 'package:sambhavtask/features/widgets/search_header_delegate.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Top Shop Location & Notification
            SliverAppBar(
              surfaceTintColor: Colors.white,
              automaticallyImplyLeading: false,
              elevation: 0.0,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: ShopeLocationAndNotifications(),
              ),
            ),

            // Search bar pinned
            SliverPersistentHeader(
              pinned: true,
              delegate: SearchHeaderDelegate(),
            ),

            // Main body content
            SliverList(
              delegate: SliverChildListDelegate([
                FirstImageSliderWithIndicator(),
                HorizontalCategoriesList(),
                MostPopularProduct(),
                SecondImageSliderWithIndicator(),
                SizedBox(height: 20),
                HighlightsSection(),
                SizedBox(height: 16),
                PopularStoresSection(),
                SizedBox(height: 16),
                BrandsSection(),
                SizedBox(height: 16),
                SpecialOffer(),
                SizedBox(height: 16),
                TopOffersNearMe(),
                SizedBox(height: 16),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
