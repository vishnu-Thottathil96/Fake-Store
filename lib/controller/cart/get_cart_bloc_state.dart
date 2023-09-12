// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'get_cart_bloc_bloc.dart';

@immutable
class GetCartBlocState {
  final List<Product> cartItems;
  const GetCartBlocState({
    required this.cartItems,
  });
}

class GetCartBlocInitial extends GetCartBlocState {
  GetCartBlocInitial() : super(cartItems: []);
}
