import 'package:fakestore/constants/space.dart';
import 'package:fakestore/controller/cart/get_cart_bloc_bloc.dart';
import 'package:fakestore/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<Product> orderList = [];
// double cartsum = 0;

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
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text(
                      'Confirm Order',
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel',
                              style: TextStyle(color: Colors.red))),
                      TextButton(
                          onPressed: () {
                            orderList.add(productData);
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Confirm',
                            style: TextStyle(color: Colors.green),
                          ))
                    ],
                  );
                },
              );
            },
            child: const Text(
              'Buy Now',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
