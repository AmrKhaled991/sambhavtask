import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key, required this.brand});
  final String brand;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(child: Image.asset(brand, width: 50)),
      ),
    );
  }
}
