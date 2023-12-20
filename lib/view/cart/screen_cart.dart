import 'package:fakestore/api/api.dart';
import 'package:fakestore/constants/space.dart';
import 'package:fakestore/controller/cart/get_cart_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
          child: Column(
            children: [
              Center(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    const Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'My Cart',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.shopping_cart_outlined,
                      size: 30,
                    )
                  ],
                ),
              ),
              height20,
              Expanded(
                child: BlocBuilder<GetCartBlocBloc, GetCartBlocState>(
                  builder: (context, state) {
                    return state.cartItems.isNotEmpty
                        ? ListView.separated(
                            itemBuilder: (context, index) {
                              return ListTile(
                                subtitle: TextButton(
                                  onPressed: (() {
                                    context.read<GetCartBlocBloc>().add(
                                        UpdateCartEvent(
                                            addToCart: false,
                                            product: state.cartItems[index]));
                                    Api().deleteData(
                                        product: state.cartItems[index]);
                                  }),
                                  child: const Text(
                                    'Remove',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                                trailing:
                                    Text('\$${state.cartItems[index].price}'),
                                title: Text(state.cartItems[index].title
                                    .substring(0, 11)),
                                leading: SizedBox(
                                  width: 100,
                                  child: Image(
                                      image: NetworkImage(
                                          state.cartItems[index].image)),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const Divider();
                            },
                            itemCount: state.cartItems.length,
                          )
                        : const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Empty Cart',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          );
                  },
                ),
              ),
              BlocBuilder<GetCartBlocBloc, GetCartBlocState>(
                builder: (context, state) {
                  return state.cartItems.isNotEmpty
                      ? SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              "Total Prize :\$ ${state.cartItems.fold<double>(0.0, (previousValue, element) => previousValue + (double.tryParse(element.price) ?? 0))}",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 16),
                            ),
                          ),
                        )
                      : const SizedBox();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
