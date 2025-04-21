import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';
import 'package:sambhavtask/core/utils/theme/appAssets.dart';

class SectionSeeAllHeader extends StatelessWidget {
  final String header;
  final VoidCallback? onTap;
  bool showFireIcon;
  bool showSeeAll;
  SectionSeeAllHeader({
    super.key,
    required this.header,
    required this.onTap,
    this.showFireIcon = false,
    this.showSeeAll = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              header,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 6),
            if (showFireIcon || showSeeAll) ...[
              showSeeAll
                  ? Image.asset(Assets.imagesSale, width: 16)
                  : const Text('🔥', style: TextStyle(fontSize: 16)),
            ],
          ],
        ),
        InkWell(
          onTap: onTap,
          child: const Text(
            'See All',
            style: TextStyle(
              fontSize: 14,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              decorationColor: kPrimaryColor,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
