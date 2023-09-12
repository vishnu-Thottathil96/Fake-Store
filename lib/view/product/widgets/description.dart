import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.screenWidth,
    required this.description,
  });

  final double screenWidth;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text('$description'),
      ),
    );
  }
}
