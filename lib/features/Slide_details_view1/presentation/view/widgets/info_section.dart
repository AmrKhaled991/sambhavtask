import 'package:flutter/material.dart';
import 'package:sambhavtask/core/utils/theme/appAssets.dart';

class infoSection extends StatelessWidget {
  const infoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left Image
            SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(Assets.imagesProduct, fit: BoxFit.cover),
            ),
            SizedBox(width: 10),
            // Right Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add 10',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Add 100 get 10% Extras',
                    style: TextStyle(fontSize: 12, color: Colors.black38),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Campaign Schedule ',
              style: TextStyle(fontSize: 10, color: Colors.black45),
            ),
            Text(
              '28 Oct 2024 - 28 Oct 2025',
              style: TextStyle(
                fontSize: 10,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Row(
          children: [
            Text(
              'Daily time ',
              style: TextStyle(fontSize: 10, color: Colors.black45),
            ),
            Text(
              '07:54 AM - 10:54 PM',
              style: TextStyle(
                fontSize: 10,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
