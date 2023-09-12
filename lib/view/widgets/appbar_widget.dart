import 'package:fakestore/api/api.dart';
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
        const CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage(
              'https://img.freepik.com/free-photo/calm-lady-dresses-casual-attire-baseball-cap-posing-sideways_176532-10331.jpg?w=1060&t=st=1694466548~exp=1694467148~hmac=23ae1eb09243419527ad1343a2970952d9c51e5123faab6ad75d1c478f59687e'),
        ),
        IconButton(
            onPressed: () {
              Api().addProducts(
                  name: 'name',
                  price: 'price',
                  description: 'description',
                  image: 'image',
                  category: 'category');
            },
            icon: Icon(
              Icons.shopping_cart_checkout_outlined,
              size: 27,
              color: iconColor,
            )),
      ],
    );
  }
}
