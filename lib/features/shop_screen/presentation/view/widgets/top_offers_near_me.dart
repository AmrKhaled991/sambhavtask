import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/top_offers_near_me_item.dart';
import 'package:sambhavtask/features/widgets/section_see_all_header.dart';

class TopOffersNearMe extends StatelessWidget {
  const TopOffersNearMe({super.key});

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
            header: 'Top Offers Near Me',
            onTap: () {},
            showFireIcon: true,
          ),
          const SizedBox(height: 16),
          // Horizontal list
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return TopOffersNearMeItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
