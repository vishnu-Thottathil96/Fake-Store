import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'quantity_count_event.dart';
part 'quantity_count_state.dart';

class QuantityCountBloc extends Bloc<QuantityCountEvent, QuantityCountState> {
  QuantityCountBloc() : super(const QuantityCountInitial()) {
    on<IncrimentEvent>((event, emit) {
      return emit(QuantityCountState(quantity: state.quantity + 1));
    });
    on<DecrimentEvent>((event, emit) {
      return emit(QuantityCountState(
          quantity: state.quantity > 1 ? state.quantity - 1 : state.quantity));
    });
  }
}
