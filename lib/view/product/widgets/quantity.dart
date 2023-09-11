import 'package:fakestore/constants/space.dart';
import 'package:fakestore/controller/quantity%20count/quantity_count_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            style: ButtonStyle(
              minimumSize:
                  MaterialStatePropertyAll(MediaQuery.of(context).size / 50),
              shape: const MaterialStatePropertyAll(StadiumBorder()),
              shadowColor: const MaterialStatePropertyAll(Colors.transparent),
              side: MaterialStateProperty.all<BorderSide>(
                const BorderSide(
                  color: Colors.grey,
                  width: 2.0,
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.transparent,
              ),
            ),
            onPressed: () {
              context.read<QuantityCountBloc>().add(DecrimentEvent());
            },
            child: const Icon(
              Icons.remove,
              color: Colors.grey,
              size: 30,
            )),
        widtht10,
        BlocBuilder<QuantityCountBloc, QuantityCountState>(
            builder: (context, state) {
          return CircleAvatar(
            radius: 22,
            backgroundColor: Colors.grey,
            child: Text(
              state.quantity.toString(),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w800),
            ),
          );
        }),
        widtht10,
        ElevatedButton(
            style: ButtonStyle(
              minimumSize:
                  MaterialStatePropertyAll(MediaQuery.of(context).size / 50),
              shape: const MaterialStatePropertyAll(StadiumBorder()),
              shadowColor: const MaterialStatePropertyAll(Colors.transparent),
              side: MaterialStateProperty.all<BorderSide>(
                const BorderSide(
                  color: Colors.grey,
                  width: 2.0,
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.transparent,
              ),
            ),
            onPressed: () {
              context.read<QuantityCountBloc>().add(IncrimentEvent());
            },
            child: const Icon(
              Icons.add,
              color: Colors.grey,
              size: 30,
            )),
      ],
    );
  }
}
