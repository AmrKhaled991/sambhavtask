import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';

class StarRating extends StatelessWidget {
  const StarRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.star, color: kPrimaryColor, size: 15),
          const SizedBox(width: 4),
          const Text(
            '4.0',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            ' (4)',
            style: TextStyle(color: Colors.grey, fontSize: 8),
          ),
        ],
      ),
    );
  }
}
