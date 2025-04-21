//

import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';

class FilterSelector extends StatefulWidget {
  const FilterSelector({super.key});

  @override
  State<FilterSelector> createState() => _FilterSelectorState();
}
class _FilterSelectorState extends State<FilterSelector> {
  int selectedCategory = 0;
  final List<String> categories = ['All', 'Men\'s Footwear', 'Men\'s Clothing'];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(categories.length, (index) {
        bool isSelected = selectedCategory == index;
        return GestureDetector(
          onTap: () => setState(() => selectedCategory = index),
          child: Container(
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color:
                  isSelected ? kPrimaryColor.withAlpha(50) : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                color: isSelected ? Colors.green : Colors.black,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        );
      }),
    );
  }
}
