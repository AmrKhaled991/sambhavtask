import 'package:flutter/material.dart';
import 'package:sambhavtask/core/utils/theme/appAssets.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/Second_image_slider_with_indicator.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/horizontal_product_list.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/image_slider_with_indicator.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/most_popular_product.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/high_lights_section.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/popular_stores_section.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/shope_location_and_notifications.dart';
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
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                surfaceTintColor: Colors.white,
                automaticallyImplyLeading: false,
                floating: false,
                pinned: false,
                elevation: 0.0,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode:
                      CollapseMode.parallax, // Smooth scrolling effect
                  background: ShopeLocationAndNotifications(),
                ),
              ),

              SliverPersistentHeader(
                pinned: true,
                delegate: SearchHeaderDelegate(),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                FirstImageSliderWithIndicator(),
                HorizontalProductList(),
                MostPopularProduct(),
                SecondImageSliderWithIndicator(),
                SizedBox(height: 20),
                HighlightsSection(),
                SizedBox(height: 16),
                PopularStoresSection(),
                SizedBox(height: 16),
                BrandsSection(),
                SizedBox(height: 16),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BrandsSection extends StatelessWidget {
  BrandsSection({super.key});
  final List<String> brands = [
    Assets.imagesHpLogo,
    Assets.imagesHpLogo,
    Assets.imagesHpLogo,
    Assets.imagesHpLogo,
    Assets.imagesHpLogo,
    Assets.imagesHpLogo,
    Assets.imagesHpLogo,
    Assets.imagesHpLogo,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        spacing: 10,
        children: [
          SectionSeeAllHeader(header: 'Brands', onTap: () {}),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index) {
              return BrandCard(brand: brands[index]);
            }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index) {
              return BrandCard(brand: brands[index + 4]);
            }),
          ),
        ],
      ),
    );
  }
}

class BrandCard extends StatelessWidget {
  const BrandCard({super.key, required this.brand});
  final String brand;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(child: Image.asset(brand, width: 50)),
    );
  }
}
