import 'package:flutter/material.dart';

class ProductDetailsDescription extends StatelessWidget {
  const ProductDetailsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Description",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 8),
        Text(
          "Product Description:\n"
          "Stay cozy and stylish with our Hoodies for Men, designed for comfort and versatility. "
          "Perfect for layering or wearing solo, these hoodies offer a modern fit that keeps you looking sharp while providing all-day comfort. "
          "Ideal for casual outings, workouts, or lounging at home.\n\n"
          "Specifications:\n"
          "• Material: 100% Cotton\n"
          "• Available Sizes: S, M, L, XL, XXL\n"
          "• Color Options: Black, White, Navy, Grey, Pastel shades\n"
          "• Fit: Regular fit, suitable for both men and women\n"
          "• Care Instructions: Machine washable, tumble dry low\n\n"
          "Key Features:\n"
          "• Soft and breathable fabric for all-day comfort\n"
          "• Classic hooded design with front pockets\n"
          "• Durable stitching for long-lasting wear\n"
          "• Easy to mix and match with any outfit\n"
          "• Great for casual, sport, or lounge wear",
          style: TextStyle(
            color: Colors.grey.shade700,
            height: 1.5, // للمسافة بين السطور
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
