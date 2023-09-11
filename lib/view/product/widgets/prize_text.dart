import 'package:flutter/material.dart';

class PrizeText extends StatelessWidget {
  const PrizeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Prize',
          style: TextStyle(color: Colors.white54, fontSize: 20),
        ),
        Text(
          '\$100',
          style: TextStyle(
              color: Colors.white54, fontSize: 30, fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}
