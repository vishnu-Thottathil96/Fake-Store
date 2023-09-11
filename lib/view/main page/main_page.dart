import 'package:fakestore/controller/bottom%20nav/bottom_navigation_controller_bloc.dart';
import 'package:fakestore/view/cart/screen_cart.dart';
import 'package:fakestore/view/home/screen_home.dart';
import 'package:fakestore/view/main%20page/widgets/bottom_nav_bar.dart';
import 'package:fakestore/view/orders/screen_order.dart';
import 'package:fakestore/view/profile/screen_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final List pages = [
    const HomeScreen(),
    const OrderScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: BlocBuilder<BottomNavigationControllerBloc,
            BottomNavigationControllerState>(
          builder: (context, state) {
            return pages[state.tabIndex];
          },
        )),
        bottomNavigationBar: const BottomNavigationWidget());
  }
}
