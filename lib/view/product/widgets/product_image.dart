import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth / 1.5,
      height: screenHeight / 3.5,
      child: Image.asset(
        'assets/lap.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
