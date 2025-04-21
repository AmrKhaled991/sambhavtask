import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';
import 'package:sambhavtask/features/widgets/custom_fav_button.dart';

class FavAndLove extends StatelessWidget {
  const FavAndLove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: kPrimaryColor.withAlpha(50),
            borderRadius: BorderRadius.circular(10),
          ),
          child: CustomFavButton(iconSize: 15),
        ),
        SizedBox(width: 4),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: kPrimaryColor.withAlpha(50),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.share,
            color: Colors.black,
            size: 15,
          ),
        ),
        SizedBox(width: 4),
      ],
    );
  }
}
