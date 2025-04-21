import 'package:flutter/material.dart';
import 'package:sambhavtask/features/widgets/filter_selector.dart';

class AllProductBar extends StatelessWidget {
  const AllProductBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Top Row: Title and Search Icon
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'All Products',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.search, color: Colors.green),
              ),
            ],
          ),
        ),

        SizedBox(height: 8),

        // Categories Row
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: FilterSelector(),
        ),
      ],
    );
  }
}
