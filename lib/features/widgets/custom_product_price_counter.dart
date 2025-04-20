import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';
import 'package:sambhavtask/core/utils/theme/Styles.dart';

class CustomProductPriceCounter extends StatefulWidget {
  const CustomProductPriceCounter({super.key});

  @override
  State<CustomProductPriceCounter> createState() =>
      _CustomProductPriceCounterState();
}

class _CustomProductPriceCounterState extends State<CustomProductPriceCounter> {
  int quantity = 26;
  final double price = 171.0;
  @override
  Widget build(BuildContext context) {
    final totalAmount = quantity * price;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Quantity", style: Styles.textBold18()),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                spacing: 10,
                children: [
                  InkWell(
                    onTap:
                        () => setState(
                          () => quantity = quantity > 1 ? quantity - 1 : 1,
                        ),
                    child: Icon(Icons.remove),
                  ),
                  Text(quantity.toString(), style: Styles.textBold18()),
                  InkWell(
                    onTap: () => setState(() => quantity++),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text("Total Amount: ", style: Styles.textBold18()),
            Text(
              "\$ ${totalAmount.toStringAsFixed(2)}",
              style: Styles.textBold18().copyWith(
                fontSize: 17,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
