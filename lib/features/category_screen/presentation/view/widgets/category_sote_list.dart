import 'package:flutter/material.dart';
import 'package:sambhavtask/features/category_screen/presentation/view/widgets/category_sotre_item.dart';

class CategoryStoreList extends StatelessWidget {
  const CategoryStoreList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CategoryStoreItem();
      },
    );
  }
}
