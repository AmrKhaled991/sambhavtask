import 'package:flutter/material.dart';
import 'package:sambhavtask/core/utils/helpers/context.dart';
import 'package:sambhavtask/core/utils/theme/Styles.dart';
import 'package:sambhavtask/core/utils/theme/appAssets.dart';

class IconAndInfo extends StatelessWidget {
  const IconAndInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Assets.imagesProduct, width: 60),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('KK fashion', style: Styles.textSemiBold14()),
            SizedBox(height: 4),
            SizedBox(
              width: context.screenWidth * 0.3,
              child: Text(
                'india country, 2 days agoindia  country,india country, 2 days agoindia  country, 2 days ago',
                style: Styles.textSemiRegular8().copyWith(
                  color: Colors.grey.shade600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
