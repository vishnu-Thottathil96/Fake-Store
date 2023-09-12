import 'package:fakestore/controller/get%20product%20bloc/get_product_bloc_bloc.dart';
import 'package:fakestore/view/product/widgets/category.dart';
import 'package:fakestore/view/product/widgets/product_card.dart';
import 'package:fakestore/view/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<GetProductBloc>().add(GetProductBlocEvent());
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
              iconColor: Colors.black,
              onBackButtonPressed: () {},
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 30),
              child: const SizedBox(
                  height: 50,
                  child: Text(
                    'Fake Store',
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth / 30),
              child: SizedBox(
                height: 40,
                child: CategorySection(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(screenWidth / 30),
                child: BlocBuilder<GetProductBloc, GetProductBlocState>(
                    builder: (context, state) {
                  if (state.isFetching) {
                    return GridView.builder(
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 2 / 1.75,
                      ),
                      itemCount: 8,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.white,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        );
                      },
                    );
                  }
                  return GridView.builder(
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                    ),
                    itemCount: state.productList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        productData: state.productList[index],
                      );
                    },
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
