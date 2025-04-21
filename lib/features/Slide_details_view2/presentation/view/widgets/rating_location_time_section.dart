import 'package:flutter/material.dart';

class RatingLocationTimeSection extends StatelessWidget {
  const RatingLocationTimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top Info Row
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Rating
              Column(
                children: [
                  Icon(Icons.star, color: Colors.green),
                  SizedBox(height: 4),
                  Text('0.0 + ratings', style: TextStyle(fontSize: 12)),
                ],
              ),
              // Location
              Column(
                children: [
                  Icon(Icons.location_on, color: Colors.green),
                  SizedBox(height: 4),
                  Text('Location', style: TextStyle(fontSize: 12)),
                ],
              ),
              // Delivery Time
              Column(
                children: [
                  Icon(Icons.timer, color: Colors.green),
                  SizedBox(height: 4),
                  Text(
                    '3-5 days\nDelivery Time',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(height: 8),

        // Big Image Placeholder
        Container(
          height: 150,
          margin: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Icon(Icons.image, size: 64, color: Colors.grey)),
        ),
      ],
    );
  }
}
