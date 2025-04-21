import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';
import 'package:sambhavtask/core/utils/theme/appAssets.dart';
import 'package:sambhavtask/features/category_screen/presentation/view/widgets/star_rating.dart';
import 'package:sambhavtask/features/widgets/custom_fav_button.dart';
import 'package:sambhavtask/features/widgets/text_with_widget_row.dart';

class CategoryStoreItem extends StatelessWidget {
   final bool showStars ;
  const CategoryStoreItem({super.key, this.showStars = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),

                          child: Image.asset(
                            Assets.imagesSliderImage2,
                            height: 130,
                            width:
                                double.maxFinite, // Replace with actual asset
                            fit: BoxFit.cover,
                          ),
                        ),

                        Positioned(top: 5, right: 5, child: CustomFavButton()),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cook Like a Pro!',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      TextWithWidgetRow(
                        leading: Icon(
                          Icons.location_on_outlined,
                          color: kPrimaryColor,
                          size: 12,
                        ),
                        text: 'Gurgaon, Haryana',
                        textStyle: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 10,
                        ),
                      ),
                      TextWithWidgetRow(
                        leading: Icon(
                          Icons.timer,
                          color: kPrimaryColor,
                          size: 15,
                        ),
                        text: '3-5 days',
                        textStyle: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (showStars) Positioned(right: 15, bottom: 70, child: StarRating()),
        ],
      ),
    );
  }
}
