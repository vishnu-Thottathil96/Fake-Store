import 'package:fakestore/constants/space.dart';
import 'package:fakestore/controller/category%20bloc/category_selector_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategorySection extends StatelessWidget {
  CategorySection({
    super.key,
  });
  final List<String> categoryList = [
    "electronics",
    "jewelery",
    "men's clothing",
    "women's clothing"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return width20;
      },
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return CategoryCard(
          categoryList: categoryList,
          index: index,
        );
      },
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key, required this.categoryList, required this.index});

  final List<String> categoryList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategorySelectorBlocBloc, CategorySelectorBlocState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context
                .read<CategorySelectorBlocBloc>()
                .add(SelectionChangeEvent(selectionIndex: index));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: state.selectionIndex == index
                    ? Colors.grey
                    : const Color.fromARGB(255, 228, 222, 222)),
            height: 40,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(categoryList[index]),
              ),
            ),
          ),
        );
      },
    );
  }
}
