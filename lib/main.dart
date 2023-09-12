import 'package:fakestore/controller/bottom%20nav/bottom_navigation_controller_bloc.dart';
import 'package:fakestore/controller/cart/get_cart_bloc_bloc.dart';
import 'package:fakestore/controller/category%20bloc/category_selector_bloc_bloc.dart';
import 'package:fakestore/controller/get%20product%20bloc/get_product_bloc_bloc.dart';
import 'package:fakestore/controller/quantity%20count/quantity_count_bloc.dart';
import 'package:fakestore/view/main%20page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const FakeStore(),
  );
}

class FakeStore extends StatelessWidget {
  const FakeStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<QuantityCountBloc>(
          create: (context) => QuantityCountBloc(),
        ),
        BlocProvider<BottomNavigationControllerBloc>(
          create: (context) => BottomNavigationControllerBloc(),
        ),
        BlocProvider<GetProductBloc>(
          create: (context) => GetProductBloc(),
        ),
        BlocProvider<CategorySelectorBlocBloc>(
          create: (context) => CategorySelectorBlocBloc(),
        ),
        BlocProvider<GetCartBlocBloc>(
          create: (context) => GetCartBlocBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fake Store',
        theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          primarySwatch: Colors.blue,
        ),
        home: MainPage(),
      ),
    );
  }
}
