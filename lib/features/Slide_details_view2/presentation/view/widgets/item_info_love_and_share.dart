import 'package:flutter/material.dart';
import 'package:sambhavtask/core/utils/theme/Styles.dart';
import 'package:sambhavtask/core/utils/theme/appAssets.dart';

class ItemInfoLoveAndShare extends StatelessWidget {
  const ItemInfoLoveAndShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Leading image
          Image.asset(Assets.imagesProduct, width: 25),
          SizedBox(width: 8),

          // Title and subtitle column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('KK fashion', style: Styles.textSemiBold16()),
                SizedBox(height: 4),
                Text(
                  'india country, 2 days ago',
                  style: Styles.textRegular12(),
                ),
              ],
            ),
          ),

          // Trailing buttons
        ],
      ),
    );
  }
}
