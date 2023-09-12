import 'package:fakestore/model/product_model.dart';
import 'package:fakestore/view/product/screen_product_details.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.productData,
  });

  final double screenHeight;
  final double screenWidth;
  final Product productData;

  @override
  Widget build(BuildContext context) {
    var roundedPrice = double.tryParse(productData.price)!.toStringAsFixed(1);
    return SizedBox(
      height: screenHeight / 2,
      width: screenWidth / 2,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(
                      productData: productData,
                    ),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              height: screenHeight / 6,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.network(productData.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(productData.title.substring(0, 11)),
                Text('\$ $roundedPrice'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
