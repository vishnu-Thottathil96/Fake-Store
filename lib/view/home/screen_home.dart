import 'package:fakestore/view/product/screen_product_details.dart';
import 'package:fakestore/view/product/widgets/category.dart';
import 'package:fakestore/view/product/widgets/product_card.dart';
import 'package:fakestore/view/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: const SizedBox(
                height: 40,
                child: CategorySection(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(screenWidth / 30),
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  itemCount: 20,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductPage(),
                            ));
                      },
                      child: ProductCard(
                          screenHeight: screenHeight, screenWidth: screenWidth),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
