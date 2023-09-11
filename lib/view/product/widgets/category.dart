import 'package:fakestore/constants/space.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return width20;
      },
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(255, 228, 222, 222),
          ),
          height: 40,
          width: 90,
          child: Center(
            child: Text('Category ${index + 1}'),
          ),
        );
      },
    );
  }
}
