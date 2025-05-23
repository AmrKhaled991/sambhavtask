import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sambhavtask/core/utils/navigation/goRouter.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/most_popular_product.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/popular_stores_card.dart';
import 'package:sambhavtask/features/widgets/section_see_all_header.dart';

class PopularStoresSection extends StatelessWidget {
  const PopularStoresSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SectionSeeAllHeader(header: ' Popular Stores', onTap: () {}),
        ),
        SizedBox(
          height: 190,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => context.push(AppRouter.slideDetails1),
                child: PopularStoresCard(),
              );
            },
          ),
        ),
      ],
    );
  }
}
