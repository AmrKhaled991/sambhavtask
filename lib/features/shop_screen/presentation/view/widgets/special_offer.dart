import 'package:flutter/material.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/product_card.dart';
import 'package:sambhavtask/features/widgets/section_see_all_header.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and See All button
          SectionSeeAllHeader(
            header: 'Special Offer',
            onTap: () {},
            showSeeAll: true,
          ),
          const SizedBox(height: 16),
          // Horizontal list
          SizedBox(
            height: 255,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return ProductCard(hasOffer: true);
              },
            ),
          ),
        ],
      ),
    );
  }
}
