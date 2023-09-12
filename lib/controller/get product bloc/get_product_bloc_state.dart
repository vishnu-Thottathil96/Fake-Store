part of 'get_product_bloc_bloc.dart';

@immutable
class GetProductBlocState {
  final List<Product> productList;
  final bool isFetching;
  const GetProductBlocState(
      {required this.productList, this.isFetching = true});
}

class GetProductBlocInitial extends GetProductBlocState {
  GetProductBlocInitial() : super(productList: []);
}
