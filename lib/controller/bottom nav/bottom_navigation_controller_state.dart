part of 'bottom_navigation_controller_bloc.dart';

@immutable
class BottomNavigationControllerState {
  final int tabIndex;
  const BottomNavigationControllerState({required this.tabIndex});
}

class BottomNavigationControllerInitial
    extends BottomNavigationControllerState {
  const BottomNavigationControllerInitial() : super(tabIndex: 0);
}
