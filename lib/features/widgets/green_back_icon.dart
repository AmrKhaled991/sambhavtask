import 'package:flutter/material.dart';

class GreenBackIcon extends StatelessWidget {
  const GreenBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.green,
        ),
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
          size: 15,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
