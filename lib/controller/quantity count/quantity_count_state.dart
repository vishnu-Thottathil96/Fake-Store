part of 'quantity_count_bloc.dart';

@immutable
class QuantityCountState {
  final int quantity;
  const QuantityCountState({required this.quantity});
}

class QuantityCountInitial extends QuantityCountState {
  const QuantityCountInitial({super.quantity = 1});
}
