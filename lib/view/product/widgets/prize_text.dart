import 'package:flutter/material.dart';

class PrizeText extends StatelessWidget {
  const PrizeText({super.key, required this.price});
  final String price;

  @override
  Widget build(BuildContext context) {
    var roundedPrice = double.tryParse(price)!.toStringAsFixed(1);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Prize',
          style: TextStyle(color: Colors.white54, fontSize: 20),
        ),
        Text(
          '\$ $roundedPrice',
          style: const TextStyle(
              color: Colors.white54, fontSize: 30, fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}
