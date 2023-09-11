part of 'bottom_navigation_controller_bloc.dart';

@immutable
class BottomNavigationControllerEvent {}

class TabChange extends BottomNavigationControllerEvent {
  final int tabIndex;
  TabChange({required this.tabIndex});
}
