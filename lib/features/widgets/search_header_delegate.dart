import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sambhavtask/core/utils/navigation/goRouter.dart';
import 'package:sambhavtask/features/shop_screen/presentation/view/widgets/shope_search.dart';

class SearchHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 60; // adjust based on your design
  @override
  double get maxExtent => 60;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.transparent,
      alignment: Alignment.center,
      child: shopeSearch(),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
