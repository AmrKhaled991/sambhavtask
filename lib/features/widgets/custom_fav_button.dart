import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';

class CustomFavButton extends StatefulWidget {
  const CustomFavButton({super.key});

  @override
  State<CustomFavButton> createState() => _CustomFavButtonState();
}

class _CustomFavButtonState extends State<CustomFavButton> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Icon(
        isFav ? Icons.favorite : Icons.favorite_border,
        color: kPrimaryColor,
      ),
      onTap: () {
        setState(() {
          isFav = !isFav;
        });
      },
    );
  }
}
