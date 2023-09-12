import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_selector_bloc_event.dart';
part 'category_selector_bloc_state.dart';

class CategorySelectorBlocBloc
    extends Bloc<CategorySelectorBlocEvent, CategorySelectorBlocState> {
  CategorySelectorBlocBloc() : super(CategorySelectorBlocInitial()) {
    on<SelectionChangeEvent>((event, emit) {
      emit(CategorySelectorBlocState(selectionIndex: event.selectionIndex));
    });
  }
}
