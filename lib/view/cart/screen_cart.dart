import 'package:fakestore/constants/space.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
          child: Column(
            children: [
              Center(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                    const Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'My Cart',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.shopping_cart_outlined,
                      size: 30,
                    )
                  ],
                ),
              ),
              height20,
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return const ListTile(
                      trailing: Text('\$100'),
                      title: Text('Lenovo Idealpad'),
                      leading: SizedBox(
                        child: Image(image: AssetImage('assets/lap.jpg')),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
