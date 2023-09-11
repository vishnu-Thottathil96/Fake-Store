import 'package:fakestore/constants/space.dart';
import 'package:fakestore/view/product/widgets/buy_now.dart';
import 'package:fakestore/view/product/widgets/color_selector.dart';
import 'package:fakestore/view/product/widgets/description.dart';
import 'package:fakestore/view/product/widgets/prize_text.dart';
import 'package:fakestore/view/product/widgets/product_image.dart';
import 'package:fakestore/view/product/widgets/purple_container.dart';
import 'package:fakestore/view/product/widgets/quantity.dart';
import 'package:fakestore/view/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

List<Color> colorlist = [
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.pink,
];

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: screenHeight,
                  width: screenWidth,
                ),
                PurpleContainer(
                    screenHeight: screenHeight, screenWidth: screenWidth),
                AppBarWidget(
                  iconColor: Colors.white,
                  onBackButtonPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Positioned(
                  left: 15,
                  top: 60,
                  child: Text(
                    'Lenovo Idealpad',
                    style: TextStyle(fontSize: 25, color: Colors.white54),
                  ),
                ),
                Positioned(
                  left: 120,
                  top: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: ProductImage(
                        screenWidth: screenWidth, screenHeight: screenHeight),
                  ),
                ),
                const Positioned(
                  top: 250,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: PrizeText(),
                  ),
                ),
                Positioned(
                  top: 470,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Colors',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const ColorSelection(),
                          Description(screenWidth: screenWidth),
                          height20,
                          const Text(
                            'Quantity :',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const QuantitySelector(),
                          height20,
                          BuyNowSection(screenWidth: screenWidth)
                        ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
