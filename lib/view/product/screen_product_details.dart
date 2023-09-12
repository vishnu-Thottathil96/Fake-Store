import 'package:fakestore/constants/space.dart';
import 'package:fakestore/model/product_model.dart';
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
  const ProductPage({super.key, required this.productData});
  final Product productData;

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
                  height: screenHeight / 1.8,
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
                Positioned(
                  left: 15,
                  top: 60,
                  child: SizedBox(
                    width: screenWidth,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        productData.title,
                        maxLines: 4,
                        style: const TextStyle(
                            fontSize: 25, color: Colors.white54),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 120,
                  top: 200,
                  child: Material(
                    borderRadius: BorderRadius.circular(25.0),
                    elevation: 8,
                    child: ProductImage(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      image: productData.image,
                    ),
                  ),
                ),
                Positioned(
                  top: 250,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: PrizeText(
                      price: productData.price,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Colors',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const ColorSelection(),
                    Description(
                      screenWidth: screenWidth,
                      description: productData.description,
                    ),
                    height20,
                    const Text(
                      'Quantity :',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const QuantitySelector(),
                    height20,
                    BuyNowSection(
                      screenWidth: screenWidth,
                      productData: productData,
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
