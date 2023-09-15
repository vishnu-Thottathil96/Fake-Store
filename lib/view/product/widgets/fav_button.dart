import 'package:fakestore/api/api.dart';
import 'package:fakestore/model/product_model.dart';
import 'package:flutter/material.dart';

class FavoriteButtonSection extends StatelessWidget {
  const FavoriteButtonSection({
    super.key,
    required this.productModel,
  });
  final Product productModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Api().upDateProduct(product: productModel, put: true);
            },
            icon: const Icon(
              Icons.shopping_bag_outlined,
              size: 33,
              color: Colors.purple,
            )),
        IconButton(
            onPressed: () {
              Api().upDateProduct(product: productModel, put: false);
            },
            icon: const Icon(
              Icons.favorite,
              size: 33,
              color: Colors.purple,
            )),
      ],
    );
  }
}
