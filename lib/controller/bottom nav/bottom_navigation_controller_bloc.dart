import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_controller_event.dart';
part 'bottom_navigation_controller_state.dart';

class BottomNavigationControllerBloc extends Bloc<
    BottomNavigationControllerEvent, BottomNavigationControllerState> {
  BottomNavigationControllerBloc()
      : super(const BottomNavigationControllerInitial()) {
    on<TabChange>((event, emit) {
      print(event.tabIndex);
      emit(BottomNavigationControllerState(tabIndex: event.tabIndex));
    });
  }
}
