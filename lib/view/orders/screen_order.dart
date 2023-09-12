import 'package:fakestore/constants/space.dart';
import 'package:fakestore/view/product/widgets/buy_now.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
          child: Column(
            children: [
              const Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Orders',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.delivery_dining_outlined,
                    size: 30,
                  )
                ],
              ),
              height20,
              Expanded(
                  child: orderList.isNotEmpty
                      ? ListView.separated(
                          itemBuilder: (context, index) {
                            return ListTile(
                              trailing: (index % 5 == 0)
                                  ? const Text(
                                      'Shipped',
                                      style: TextStyle(color: Colors.orange),
                                    )
                                  : index % 3 == 0
                                      ? const Text(
                                          'Dipatched',
                                          style: TextStyle(color: Colors.blue),
                                        )
                                      : index % 2 == 0
                                          ? const Text(
                                              'Out for delivery',
                                              style: TextStyle(
                                                  color: Colors.green),
                                            )
                                          : const Text('Ordered'),
                              title:
                                  Text(orderList[index].title.substring(0, 11)),
                              leading: SizedBox(
                                height: double.infinity,
                                width: 50,
                                child: Image(
                                  image: NetworkImage(orderList[index].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const Divider();
                          },
                          itemCount: orderList.length,
                        )
                      : Center(
                          child: Text('No Active Orders'),
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
