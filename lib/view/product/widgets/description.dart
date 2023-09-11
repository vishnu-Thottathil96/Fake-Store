import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
            'Effective product descriptions can possibly lure potential customers. Good product descriptions can potentially influence a purchase decision. Great product descriptions can ultimately help improve conversion rates and increase sales, as well as boost your visibility and SEO on paid channels.'),
      ),
    );
  }
}
