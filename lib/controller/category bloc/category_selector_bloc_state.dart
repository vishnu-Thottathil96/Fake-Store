// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'category_selector_bloc_bloc.dart';

@immutable
class CategorySelectorBlocState {
  final int selectionIndex;
  const CategorySelectorBlocState({
    required this.selectionIndex,
  });
}

class CategorySelectorBlocInitial extends CategorySelectorBlocState {
  const CategorySelectorBlocInitial() : super(selectionIndex: 0);
}
