import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.iconColor,
    required this.onBackButtonPressed,
  });
  final Color iconColor;
  final VoidCallback onBackButtonPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              onBackButtonPressed;
            },
            icon: Icon(
              Icons.arrow_back,
              size: 27,
              color: iconColor,
            )),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 27,
              color: iconColor,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_checkout_outlined,
              size: 27,
              color: iconColor,
            )),
      ],
    );
  }
}
