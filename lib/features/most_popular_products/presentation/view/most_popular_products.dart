import 'package:flutter/material.dart';
import 'package:sambhavtask/features/category_screen/presentation/view/widgets/items_tab.dart';

class MostPopularProducts extends StatelessWidget {
  const MostPopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomRowAppBar(title: 'Most Popular Products'),
      body: AllProductsList(),
    );
  }
}

class CustomRowAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;
  final VoidCallback? onCart;

  const CustomRowAppBar({
    super.key,
    required this.title,
    this.onBack,
    this.onCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 20), // لحساب SafeArea
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: kToolbarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // زر الرجوع
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onPressed: onBack ?? () => Navigator.of(context).pop(),
                ),

                // العنوان في المنتصف
                Expanded(
                  child: Center(
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // زر السلة
                IconButton(
                  icon: const Icon(Icons.shopping_cart_outlined),
                  color: Colors.black,
                  onPressed: onCart,
                ),
              ],
            ),
          ),
          const Divider(height: 1, thickness: 1, color: Colors.grey),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 40);
}
