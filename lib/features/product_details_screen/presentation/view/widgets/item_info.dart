import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';
import 'package:sambhavtask/core/utils/theme/Styles.dart';
import 'package:sambhavtask/features/product_details_screen/presentation/view/widgets/product_details_image_slider.dart';
import 'package:sambhavtask/features/widgets/custom_fav_button.dart';
import 'package:sambhavtask/features/widgets/star_rating.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductDetailsImageSlider(),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Hodies for Men", style: Styles.textBold20()),
            CustomFavButton(),
          ],
        ),
        Text("Art Apparel", style: TextStyle(color: Colors.green)),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "\$ 171.00",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$ 190.00",
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 8),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text("Pcs", style: TextStyle(fontSize: 12)),
              ),
            ],
          ),
        ),

        SizedBox(height: 6),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StarRating(
              length: 5,
              between: 5,
              color: Colors.amber,
              starSize: 20,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                "In Stock",
                style: Styles.textSemiBold12().copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
