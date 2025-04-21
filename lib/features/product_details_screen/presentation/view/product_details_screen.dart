import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sambhavtask/constant.dart';
import 'package:sambhavtask/core/utils/theme/Styles.dart';
import 'package:sambhavtask/features/product_details_screen/presentation/view/widgets/item_info.dart';
import 'package:sambhavtask/features/product_details_screen/presentation/view/widgets/product_details_description.dart';
import 'package:sambhavtask/features/widgets/custom_cart_icon.dart';
import 'package:sambhavtask/features/widgets/custom_product_price_counter.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final ScrollController _scrollController = ScrollController();
  double scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      setState(() {
        scrollOffset = _scrollController.offset;
      });
    });
  }

  Color getAppBarColor() {
    return scrollOffset > 50 ? kPrimaryColor.withOpacity(0.05) : Colors.white;
  }

  Color getIconColor() {
    return scrollOffset > 50 ? Colors.black : Colors.black;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: getAppBarColor(),
        elevation: scrollOffset > 50 ? 4 : 0,
        centerTitle: true,
        title: Text("Item Details", style: Styles.textSemiBold18()),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
          onPressed: () {
            context.pop();
          },
        ),
        actions: [CustomCartIcon()],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemInfo(),
                    Divider(height: 30, color: Colors.black38, thickness: 2),
                    CustomProductPriceCounter(),
                    SizedBox(height: 20),
                    ProductDetailsDescription(),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Add To Cart",
                    style: Styles.textSemiBold18().copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
