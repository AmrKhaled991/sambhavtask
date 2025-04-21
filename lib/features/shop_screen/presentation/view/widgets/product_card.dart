import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sambhavtask/core/utils/navigation/goRouter.dart';
import 'package:sambhavtask/features/widgets/custom_fav_button.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductCard extends StatelessWidget {
  final bool hasOffer;
  const ProductCard({super.key, this.hasOffer = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(AppRouter.productDetails),
      child: Container(
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
            if (hasOffer) ...[
              Positioned(
                top: 12,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    '25.0% OFF',
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ),
            ],

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
                child: Icon(
                  hasOffer ? Icons.add : Icons.add_shopping_cart_rounded,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
