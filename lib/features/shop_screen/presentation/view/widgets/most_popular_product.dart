import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sambhavtask/constant.dart';
import 'package:sambhavtask/core/utils/navigation/goRouter.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/product_card.dart';
import 'package:sambhavtask/features/widgets/section_see_all_header.dart';

class MostPopularProduct extends StatelessWidget {
  const MostPopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor.withOpacity(0.1),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and See All button
          SectionSeeAllHeader(
            header: 'Most Popular Products',
            onTap: () => context.push(AppRouter.mostPopularProduct),
            showFireIcon: true,
          ),
          const SizedBox(height: 16),
          // Horizontal list
          SizedBox(
            height: 255,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return ProductCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}
