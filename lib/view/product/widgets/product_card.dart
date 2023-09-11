import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.blue,
      height: screenHeight / 2,
      width: screenWidth / 2,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            height: screenHeight / 6,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.network(
                  'https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Laptop'),
                Text('\$100'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
