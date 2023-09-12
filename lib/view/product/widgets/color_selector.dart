import 'package:fakestore/controller/category%20bloc/category_selector_bloc_bloc.dart';
import 'package:fakestore/view/product/screen_product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorSelection extends StatelessWidget {
  const ColorSelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 4; i++)
          InkWell(
            onTap: () {
              context
                  .read<CategorySelectorBlocBloc>()
                  .add(SelectionChangeEvent(selectionIndex: i));
            },
            child: BlocBuilder<CategorySelectorBlocBloc,
                CategorySelectorBlocState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: colorlist[i],
                    child: i == state.selectionIndex ? Icon(Icons.check) : null,
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
