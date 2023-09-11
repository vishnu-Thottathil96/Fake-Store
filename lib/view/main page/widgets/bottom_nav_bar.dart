import 'package:fakestore/controller/bottom%20nav/bottom_navigation_controller_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationControllerBloc,
        BottomNavigationControllerState>(builder: (context, state) {
      return BottomNavigationBar(
          elevation: 0,
          currentIndex: state.tabIndex,
          onTap: (value) {
            context
                .read<BottomNavigationControllerBloc>()
                .add(TabChange(tabIndex: value));
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: const Color.fromARGB(255, 97, 96, 96),
          selectedIconTheme: const IconThemeData(color: Colors.blue),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.delivery_dining_outlined), label: 'Orders'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin), label: 'Profile'),
          ]);
    });
  }
}
