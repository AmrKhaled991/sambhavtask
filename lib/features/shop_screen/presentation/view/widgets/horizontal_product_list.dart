import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';
import 'package:sambhavtask/core/utils/theme/Styles.dart';
import 'package:sambhavtask/core/utils/theme/appAssets.dart';

class HorizontalProductList extends StatelessWidget {
  const HorizontalProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {'image': Assets.imagesProduct, 'name': 'Item 1'},
      {'image': Assets.imagesProduct, 'name': 'Item 2'},
      {'image': Assets.imagesProduct, 'name': 'Item 3'},
      {'image': Assets.imagesProduct, 'name': 'Item 4'},
      {'image': Assets.imagesProduct, 'name': 'Item 5'},
      {'image': Assets.imagesProduct, 'name': 'Item 6'},
      {'image': Assets.imagesProduct, 'name': 'Item 7'},
      {'image': Assets.imagesProduct, 'name': 'Item 8'},
      {'image': Assets.imagesProduct, 'name': 'Item 5'},
      {'image': Assets.imagesProduct, 'name': 'Item 6'},
      {'image': Assets.imagesProduct, 'name': 'Item 7'},
      {'image': Assets.imagesProduct, 'name': 'Item 8'},
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 100, // Enough space for square + name
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:
              items.length > 8 ? 10 : items.length, // 8 items + 1 for "+4"
          itemBuilder: (context, index) {
            if (index <= 8) {
              // Normal Item
              return Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Image.asset(items[index]['image']!, width: 40),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      items[index]['name']!,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              );
            } else {
              // "+4" Last Special Item
              return GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (_) => const AllProductsScreen()),
                  // );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            "+${(items.length - 8).toString()}",
                            style: Styles.textSemiBold20().copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'see all',
                        style: TextStyle(fontSize: 12, color: kPrimaryColor),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
