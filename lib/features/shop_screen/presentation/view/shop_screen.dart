import 'package:flutter/material.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/Second_image_slider_with_indicator.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/horizontal_product_list.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/image_slider_with_indicator.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/most_popular_product.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/shope_location_and_notifications.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/shope_search.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ShopeLocationAndNotifications(),
              shopeSearch(),
              FirstImageSliderWithIndicator(),
              HorizontalProductList(),
              MostPopularProduct(),
              SecondImageSliderWithIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
