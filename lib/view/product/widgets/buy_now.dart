import 'package:fakestore/constants/space.dart';
import 'package:fakestore/controller/cart/get_cart_bloc_bloc.dart';
import 'package:fakestore/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//List<Product> cartList = [];
double cartsum = 0;

class BuyNowSection extends StatelessWidget {
  const BuyNowSection({
    super.key,
    required this.screenWidth,
    required this.productData,
  });

  final double screenWidth;
  final Product productData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 50,
          width: 70,
          child: ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)),
            onPressed: () {
              context
                  .read<GetCartBlocBloc>()
                  .add(UpdateCartEvent(addToCart: true, product: productData));
              // cartList.add(productData);
              // cartsum += double.tryParse(productData.price) ?? 0;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Product Added to Cart'),
                  backgroundColor: Colors.green,
                  duration: Duration(seconds: 1),
                ),
              );
            },
            child: const Icon(
              Icons.add_shopping_cart_outlined,
              size: 30,
            ),
          ),
        ),
        width20,
        SizedBox(
          height: 50,
          width: screenWidth / 1.4,
          child: ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)),
            onPressed: () {},
            child: const Text('Buy Now'),
          ),
        ),
      ],
    );
  }
}
