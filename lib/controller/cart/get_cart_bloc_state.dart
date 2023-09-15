part of 'get_cart_bloc_bloc.dart';

class GetCartBlocState {
  final List<Product> cartItems;
  const GetCartBlocState({
    required this.cartItems,
  });
}

class GetCartBlocInitial extends GetCartBlocState {
  GetCartBlocInitial() : super(cartItems: []);
}
