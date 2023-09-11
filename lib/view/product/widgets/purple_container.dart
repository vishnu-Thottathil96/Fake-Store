import 'package:flutter/material.dart';

class PurpleContainer extends StatelessWidget {
  const PurpleContainer({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        ),
        color: Colors.deepPurple,
      ),
      height: screenHeight / 2.5,
      width: screenWidth,
    );
  }
}
