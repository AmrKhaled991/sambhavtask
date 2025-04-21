import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sambhavtask/core/utils/theme/appAssets.dart';

class CategoriesScreen extends StatelessWidget {
  final List<CategoryItem> categories = [
    CategoryItem(name: "Men's Fashion", icon: Assets.imagesProduct),
    CategoryItem(name: "Women's Trend", icon: Assets.imagesProduct),
    CategoryItem(name: "Kids' Fashion", icon: Assets.imagesProduct),
    CategoryItem(name: "Health", icon: Assets.imagesProduct),
    CategoryItem(name: "Beauty", icon: Assets.imagesProduct),
    CategoryItem(name: "Pet Supplies", icon: Assets.imagesProduct),
    CategoryItem(name: "Kitchen", icon: Assets.imagesProduct),
    CategoryItem(name: "Sports", icon: Assets.imagesProduct),
    CategoryItem(name: "Jewelry", icon: Assets.imagesProduct),
    CategoryItem(name: "Luggage", icon: Assets.imagesProduct),
    CategoryItem(name: "Gifts", icon: Assets.imagesProduct),
  ];

  CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Categories'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            context.pop();
          },
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          },
        ),
      ),
    );
  }
}

class CategoryItem {
  final String name;
  final String icon;

  CategoryItem({required this.name, required this.icon});
}

class CategoryCard extends StatelessWidget {
  final CategoryItem category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,

      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(category.icon, width: 50, height: 50),
          SizedBox(height: 10),
          Text(
            category.name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
