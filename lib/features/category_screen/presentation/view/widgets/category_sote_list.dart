import 'package:flutter/material.dart';
import 'package:sambhavtask/features/category_screen/presentation/view/widgets/category_sotre_item.dart';

class CategoryStoreList extends StatelessWidget {
  final bool showStars;
  final bool neverScroll;
  const CategoryStoreList({
    super.key,
    this.showStars = false,
    this.neverScroll = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: neverScroll ? NeverScrollableScrollPhysics() : null,
      itemBuilder: (context, index) {
        return CategoryStoreItem(showStars: showStars);
      },
    );
  }
}
