import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sambhavtask/features/widgets/custom_fav_button.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Image
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 100,
                    child: CachedNetworkImage(
                      width: double.infinity,
                      imageUrl:
                          'https://m.media-amazon.com/images/I/816uW9q6BKS._AC_SX679_.jpg',
                      placeholder:
                          (context, url) => Skeletonizer(child: SizedBox()),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                // Store Name
                const Text(
                  'Clove Mart',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(height: 6),
                // Product Name
                const Text(
                  'Loreal Midnight Cream',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 25),
                const Text(
                  '\$59.00',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // Favorite Icon (Heart)
          Positioned(top: 15, right: 15, child: CustomFavButton()),

          // Add to Cart Icon (bottom right)
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
              ),
              child: const Icon(
                Icons.add_shopping_cart_rounded,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
