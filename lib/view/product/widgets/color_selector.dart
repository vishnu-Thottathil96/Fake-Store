import 'package:fakestore/view/product/screen_product_details.dart';
import 'package:flutter/material.dart';

class ColorSelection extends StatelessWidget {
  const ColorSelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 4; i++)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: colorlist[i],
            ),
          ),
      ],
    );
  }
}
