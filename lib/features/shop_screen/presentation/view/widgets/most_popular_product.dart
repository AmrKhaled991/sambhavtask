import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/product_card.dart';

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
          SectionSeeAllHeader(header: 'Most Popular Products', onTap: () {},showFireIcon: true,),
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

class SectionSeeAllHeader extends StatelessWidget {
  final String header;
  final VoidCallback? onTap;
  bool showFireIcon;
  SectionSeeAllHeader({
    super.key,
    required this.header,
    required this.onTap,
    this.showFireIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Text(
              'Most Popular Products',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 6),
            if (showFireIcon) ...[
              const Text('🔥', style: TextStyle(fontSize: 16)),
            ],
          ],
        ),
        InkWell(
          onTap: onTap,
          child: const Text(
            'See All',
            style: TextStyle(
              fontSize: 14,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              decorationColor: kPrimaryColor,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
