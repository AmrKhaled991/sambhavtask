import 'package:flutter/material.dart';
import 'package:sambhavtask/core/utils/theme/appAssets.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/shop_screen.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/brand_card.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/most_popular_product.dart';
import 'package:sambhavtask/features/widgets/section_see_all_header.dart';

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
