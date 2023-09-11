import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_controller_event.dart';
part 'bottom_navigation_controller_state.dart';

class BottomNavigationControllerBloc extends Bloc<
    BottomNavigationControllerEvent, BottomNavigationControllerState> {
  BottomNavigationControllerBloc()
      : super(const BottomNavigationControllerInitial(tabIndex: 0)) {
    on<BottomNavigationControllerEvent>((event, emit) {
      if (event is TabChange) {
        print(event.tabIndex);
        emit(BottomNavigationControllerInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
