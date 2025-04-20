import 'package:flutter/material.dart';
import 'package:sambhavtask/core/utils/theme/Styles.dart';

typedef RatingTapCallback = void Function(double rating);

class StarRating extends StatelessWidget {
  const StarRating({
    super.key,
    this.length = 1,
    this.rating = 0,
    this.between = 0.0,
    this.starSize = 20.0,
    this.color,
    this.onRaitingTap,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final int length;
  final double rating;
  final double between;
  final double starSize;
  final RatingTapCallback? onRaitingTap;
  final Color? color;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).primaryColor;

    final space = SizedBox(width: between);

    final full = Icon(Icons.star, color: color, size: starSize);
    final half = Icon(Icons.star_half, color: color, size: starSize);
    final empty = Icon(
      Icons.star_outlined,
      color: Colors.blueGrey.shade100,
      size: starSize,
    );

    Icon chooseStar(int index) =>
        (rating >= index + 1)
            ? full
            : (rating >= index + 0.5)
            ? half
            : empty;

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: <Widget>[
        Text(
          '0.0',
          style: Styles.textSemiBold20().copyWith(
            color: Colors.blueGrey.shade100,
          ),
        ),
        for (int i = 0; i < length; i++) ...[
          if (i > 0) space,
          GestureDetector(
            onTap: () => onRaitingTap?.call((i + 1).toDouble()),
            child: chooseStar(i),
          ),
        ],
        Text(
          '(0)',
          style: Styles.textSemiBold16().copyWith(
            color: Colors.blueGrey.shade100,
          ),
        ),
      ],
    );
  }
}
