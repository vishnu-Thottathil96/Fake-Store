import 'package:fakestore/constants/space.dart';
import 'package:flutter/material.dart';

class BuyNowSection extends StatelessWidget {
  const BuyNowSection({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 50,
          width: 70,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)),
            onPressed: () {},
            child: Icon(
              Icons.add_shopping_cart_outlined,
              size: 30,
            ),
          ),
        ),
        width20,
        SizedBox(
          height: 50,
          width: screenWidth / 1.38,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)),
            onPressed: () {},
            child: Text('Buy Now'),
          ),
        ),
      ],
    );
  }
}
