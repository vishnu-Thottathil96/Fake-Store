import 'package:bloc/bloc.dart';
import 'package:fakestore/api/api.dart';
import 'package:fakestore/model/product_model.dart';
import 'package:meta/meta.dart';

part 'get_product_bloc_event.dart';
part 'get_product_bloc_state.dart';

class GetProductBloc extends Bloc<GetProductBlocEvent, GetProductBlocState> {
  GetProductBloc() : super(GetProductBlocInitial()) {
    on<GetProductBlocEvent>((event, emit) async {
      final products = await Api().getProducts();
      emit(GetProductBlocState(productList: products, isFetching: false));
    });
  }
}
