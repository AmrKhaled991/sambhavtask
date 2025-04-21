//

import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';
import 'package:sambhavtask/features/category_screen/presentation/view/widgets/category_sote_list.dart';
import 'package:sambhavtask/features/category_screen/presentation/view/widgets/items_tab.dart';
import 'package:sambhavtask/features/widgets/filter_selector.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Item and Stores
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Men’s Fashion",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          actions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(
              icon: const Icon(Icons.shopping_cart_outlined),
              onPressed: () {},
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(10),
            child: Divider(color: Colors.grey.shade300),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: FilterSelector(),
            ),
            const TabBar(
              dividerColor: Colors.transparent,
              labelColor: kPrimaryColor,
              unselectedLabelColor: Colors.black54,
              indicatorColor: kPrimaryColor,
              tabs: [Tab(text: "Item"), Tab(text: "Stores")],
            ),
            Expanded(
              child: const TabBarView(
                children: [
                  // Items Tab
                  AllProductsList(hasOffer: true),
                  // Stores Tab
                  CategoryStoreList(showStars: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//