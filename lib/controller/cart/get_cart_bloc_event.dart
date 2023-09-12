// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'get_cart_bloc_bloc.dart';

@immutable
class GetCartBlocEvent {}

class UpdateCartEvent extends GetCartBlocEvent {
  final bool addToCart;
  final Product product;
  UpdateCartEvent({
    required this.addToCart,
    required this.product,
  });
}

class GetAllCartItemsEvent extends GetCartBlocEvent {}
