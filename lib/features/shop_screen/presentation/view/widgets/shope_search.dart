import 'package:flutter/material.dart';
import 'package:sambhavtask/core/utils/theme/Styles.dart';

class shopeSearch extends StatelessWidget {
  const shopeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black12, // Light green shadow
                spreadRadius: 1,
                blurRadius: 8,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              spacing: 5,
              children: [
                Icon(Icons.search, color: Colors.green),
                Text(
                  "Search your desired items or stores",
                  style: Styles.textRegular12(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
