import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';

class CustomCartIcon extends StatelessWidget {
  const CustomCartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined, color: kPrimaryColor),
          onPressed: () {},
        ),
        Positioned(
          right: 6,
          top: 6,
          child: CircleAvatar(
            radius: 8,
            backgroundColor: Colors.red,
            child: Text(
              '0',
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
