// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'category_selector_bloc_bloc.dart';

@immutable
class CategorySelectorBlocEvent {}

class SelectionChangeEvent extends CategorySelectorBlocEvent {
  final int selectionIndex;
  SelectionChangeEvent({
    required this.selectionIndex,
  });
}
