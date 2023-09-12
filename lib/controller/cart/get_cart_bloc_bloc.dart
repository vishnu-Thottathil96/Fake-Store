import 'package:bloc/bloc.dart';
import 'package:fakestore/model/product_model.dart';
import 'package:meta/meta.dart';

part 'get_cart_bloc_event.dart';
part 'get_cart_bloc_state.dart';

class GetCartBlocBloc extends Bloc<GetCartBlocEvent, GetCartBlocState> {
  GetCartBlocBloc() : super(GetCartBlocInitial()) {
    on<UpdateCartEvent>((event, emit) {
      event.addToCart
          ? state.cartItems.add(event.product)
          : state.cartItems.remove(event.product);
      emit(GetCartBlocState(cartItems: state.cartItems));
    });
    on<GetAllCartItemsEvent>(
      (event, emit) {
        emit(GetCartBlocState(cartItems: state.cartItems));
      },
    );
  }
}
