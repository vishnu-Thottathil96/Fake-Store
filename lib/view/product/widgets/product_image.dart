import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.image,
  });

  final double screenWidth;
  final double screenHeight;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      width: screenWidth / 1.5,
      height: screenHeight / 3.5,
      child: Image.network(
        image,
      ),
    );
  }
}
